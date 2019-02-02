//
//  ScanViewController.swift
//  EvaTest
//
//  Created by Александр Харченко on 2/1/19.
//  Copyright © 2019 Александр Харченко. All rights reserved.
//


import AVFoundation
import UIKit

class ScannerViewController: UIViewController, AVCaptureMetadataOutputObjectsDelegate {
    
    @IBOutlet var lbCodeInfo: UILabel!
    @IBOutlet var cancelButton: UIButton!
    @IBOutlet var captureFrameView: UIView!
    @IBOutlet var scanInfo: UILabel!
    var captureSession: AVCaptureSession!
    var previewLayer: AVCaptureVideoPreviewLayer!
    
    var productId: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCaptureСodeSession()
        lbCodeInfo.isHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if (captureSession?.isRunning == false) {
            captureSession.startRunning()
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if (captureSession?.isRunning == true) {
            captureSession.stopRunning()
        }
    }
    
    
    //Mark -  setup scanner
    
    func setCaptureСodeSession() {
        captureSession = AVCaptureSession()
        let metadataOutput = AVCaptureMetadataOutput()
        let videoInput: AVCaptureDeviceInput
        guard let videoCaptureDevice = AVCaptureDevice.default(for: .video) else { return }

        do {
            videoInput = try AVCaptureDeviceInput(device: videoCaptureDevice)
        } catch {
            return
        }
        
        if (captureSession.canAddInput(videoInput)) {
            captureSession.addInput(videoInput)
        }
        
        if (captureSession.canAddOutput(metadataOutput)) {
            captureSession.addOutput(metadataOutput)
            metadataOutput.setMetadataObjectsDelegate(self, queue: DispatchQueue.main)
            metadataOutput.metadataObjectTypes = [.ean8, .ean13, .pdf417, .qr]
        }
        
        previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer.frame = view.layer.bounds
        previewLayer.videoGravity = .resizeAspectFill
        view.layer.addSublayer(previewLayer)
        captureSession.startRunning()
        
        view.bringSubviewToFront(scanInfo)
        view.bringSubviewToFront(cancelButton)
        view.bringSubviewToFront(captureFrameView)
        view.bringSubviewToFront(lbCodeInfo)
    }
    
    
    func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection) {
        captureSession.stopRunning()
        
        if let metadataObject = metadataObjects.first {
            guard let readableObject = metadataObject as? AVMetadataMachineReadableCodeObject else { return }
            guard let stringValue = readableObject.stringValue else { return }
            AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
            foundCode(code: stringValue)
        }
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: NotificationMane.reloadProductsInfo), object: nil)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.dismiss(animated: true, completion: nil)
        }
       
    }
    
    // Mark - scanned code initialization
    func foundCode(code: String) {
        lbCodeInfo.isHidden = false
        lbCodeInfo.text = code
        guard let id = productId else {return}
        FirebaseHelper().handleSendProductCode(productId: id, code: code)
    }
    
    
    @IBAction func dismissScannerView(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: NotificationMane.reloadProductsInfo), object: nil)
        dismiss(animated: true, completion: nil)
    }
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
}
