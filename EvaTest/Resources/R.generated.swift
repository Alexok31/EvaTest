//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)
  
  static func validate() throws {
    try intern.validate()
  }
  
  /// This `R.color` struct is generated, and contains static references to 0 colors.
  struct color {
    fileprivate init() {}
  }
  
  /// This `R.file` struct is generated, and contains static references to 2 files.
  struct file {
    /// Resource file `GoogleService-Info.plist`.
    static let googleServiceInfoPlist = Rswift.FileResource(bundle: R.hostingBundle, name: "GoogleService-Info", pathExtension: "plist")
    /// Resource file `loading.gif`.
    static let loadingGif = Rswift.FileResource(bundle: R.hostingBundle, name: "loading", pathExtension: "gif")
    
    /// `bundle.url(forResource: "GoogleService-Info", withExtension: "plist")`
    static func googleServiceInfoPlist(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.googleServiceInfoPlist
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "loading", withExtension: "gif")`
    static func loadingGif(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.loadingGif
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.font` struct is generated, and contains static references to 0 fonts.
  struct font {
    fileprivate init() {}
  }
  
  /// This `R.image` struct is generated, and contains static references to 8 images.
  struct image {
    /// Image `cancel`.
    static let cancel = Rswift.ImageResource(bundle: R.hostingBundle, name: "cancel")
    /// Image `codeFrame`.
    static let codeFrame = Rswift.ImageResource(bundle: R.hostingBundle, name: "codeFrame")
    /// Image `evaLogo`.
    static let evaLogo = Rswift.ImageResource(bundle: R.hostingBundle, name: "evaLogo")
    /// Image `imageProductId1`.
    static let imageProductId1 = Rswift.ImageResource(bundle: R.hostingBundle, name: "imageProductId1")
    /// Image `launchScreenLogo`.
    static let launchScreenLogo = Rswift.ImageResource(bundle: R.hostingBundle, name: "launchScreenLogo")
    /// Image `loading.gif`.
    static let loadingGif = Rswift.ImageResource(bundle: R.hostingBundle, name: "loading.gif")
    /// Image `navigationBar`.
    static let navigationBar = Rswift.ImageResource(bundle: R.hostingBundle, name: "navigationBar")
    /// Image `scanIcon`.
    static let scanIcon = Rswift.ImageResource(bundle: R.hostingBundle, name: "scanIcon")
    
    /// `UIImage(named: "cancel", bundle: ..., traitCollection: ...)`
    static func cancel(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.cancel, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "codeFrame", bundle: ..., traitCollection: ...)`
    static func codeFrame(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.codeFrame, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "evaLogo", bundle: ..., traitCollection: ...)`
    static func evaLogo(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.evaLogo, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "imageProductId1", bundle: ..., traitCollection: ...)`
    static func imageProductId1(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.imageProductId1, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "launchScreenLogo", bundle: ..., traitCollection: ...)`
    static func launchScreenLogo(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.launchScreenLogo, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "loading.gif", bundle: ..., traitCollection: ...)`
    static func loadingGif(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.loadingGif, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "navigationBar", bundle: ..., traitCollection: ...)`
    static func navigationBar(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.navigationBar, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "scanIcon", bundle: ..., traitCollection: ...)`
    static func scanIcon(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.scanIcon, compatibleWith: traitCollection)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.nib` struct is generated, and contains static references to 1 nibs.
  struct nib {
    /// Nib `ProductCollectionCell`.
    static let productCollectionCell = _R.nib._ProductCollectionCell()
    
    /// `UINib(name: "ProductCollectionCell", in: bundle)`
    static func productCollectionCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.productCollectionCell)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.reuseIdentifier` struct is generated, and contains static references to 1 reuse identifiers.
  struct reuseIdentifier {
    /// Reuse identifier `productListCellId`.
    static let productListCellId: Rswift.ReuseIdentifier<ProductCollectionCell> = Rswift.ReuseIdentifier(identifier: "productListCellId")
    
    fileprivate init() {}
  }
  
  /// This `R.segue` struct is generated, and contains static references to 0 view controllers.
  struct segue {
    fileprivate init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 2 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.string` struct is generated, and contains static references to 0 localization tables.
  struct string {
    fileprivate init() {}
  }
  
  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }
    
    fileprivate init() {}
  }
  
  fileprivate class Class {}
  
  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    try storyboard.validate()
    try nib.validate()
  }
  
  struct nib: Rswift.Validatable {
    static func validate() throws {
      try _ProductCollectionCell.validate()
    }
    
    struct _ProductCollectionCell: Rswift.NibResourceType, Rswift.ReuseIdentifierType, Rswift.Validatable {
      typealias ReusableType = ProductCollectionCell
      
      let bundle = R.hostingBundle
      let identifier = "productListCellId"
      let name = "ProductCollectionCell"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [NSObject : AnyObject]? = nil) -> ProductCollectionCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? ProductCollectionCell
      }
      
      static func validate() throws {
        if UIKit.UIImage(named: "scanIcon", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'scanIcon' is used in nib 'ProductCollectionCell', but couldn't be loaded.") }
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      try main.validate()
      try launchScreen.validate()
    }
    
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UIViewController
      
      let bundle = R.hostingBundle
      let name = "LaunchScreen"
      
      static func validate() throws {
        if UIKit.UIImage(named: "launchScreenLogo") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'launchScreenLogo' is used in storyboard 'LaunchScreen', but couldn't be loaded.") }
      }
      
      fileprivate init() {}
    }
    
    struct main: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UINavigationController
      
      let bundle = R.hostingBundle
      let name = "Main"
      let productListViewControllerId = StoryboardViewControllerResource<ProductListViewController>(identifier: "ProductListViewControllerId")
      let scannerVcId = StoryboardViewControllerResource<ScannerViewController>(identifier: "ScannerVcId")
      
      func productListViewControllerId(_: Void = ()) -> ProductListViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: productListViewControllerId)
      }
      
      func scannerVcId(_: Void = ()) -> ScannerViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: scannerVcId)
      }
      
      static func validate() throws {
        if UIKit.UIImage(named: "codeFrame") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'codeFrame' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "cancel") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'cancel' is used in storyboard 'Main', but couldn't be loaded.") }
        if _R.storyboard.main().scannerVcId() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'scannerVcId' could not be loaded from storyboard 'Main' as 'ScannerViewController'.") }
        if _R.storyboard.main().productListViewControllerId() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'productListViewControllerId' could not be loaded from storyboard 'Main' as 'ProductListViewController'.") }
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate init() {}
}
