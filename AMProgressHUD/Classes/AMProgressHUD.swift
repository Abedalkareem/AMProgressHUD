//
//  AMProgressHUD.swift
//  AMProgressHUD
//
//  Created by abedalkareem omreyh on 11/21/17.
//  Copyright © 2017 abedalkareem omreyh. All rights reserved.
//
//

import UIKit
import ImageIO

public class AMProgressHUD: UIView {
    
    /// The object that save all the AMProgressHUD options, (colors, corner radius, image name, duration)
    public static let options = GifHUDOptions()

    static private let view = AMProgressHUD()
    static private let appWindow = UIApplication.shared.keyWindow
    
    private let loadingView = UIView()
    private let backgroundView = UIView()
    
    // MARK: init
    init() {
        super.init(frame: AMProgressHUD.appWindow!.bounds)
        initBackgroundView()
        initLoadingView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initBackgroundView() {
        backgroundView.frame = frame
        backgroundView.backgroundColor = UIColor.black
        backgroundView.alpha = AMProgressHUD.options.backgroundAlpha
        addSubview(backgroundView)
    }
    
    private func initLoadingView() {
        let side = frame.size.width / 3
        let x = frame.midX - (side/2)
        let y = frame.midY - (side/2)
        loadingView.frame = CGRect(x: x, y: y, width: side, height: side)
        loadingView.backgroundColor = AMProgressHUD.options.backgroundColor
        loadingView.layer.cornerRadius = AMProgressHUD.options.cornerRadius
        addSubview(loadingView)

        let imageSide = loadingView.frame.size.width / 1.5
        let imageX = loadingView.frame.width/2 - (imageSide/2)
        let imageY = loadingView.frame.height/2 - (imageSide/2)
        let imageView = UIImageView(frame: CGRect(x: imageX, y: imageY, width: imageSide, height: imageSide))
        
        imageView.contentMode = AMProgressHUD.options.contentMode
        imageView.animationImages = createImages()
        imageView.animationDuration = AMProgressHUD.options.animationDuration
        imageView.animationRepeatCount = AMProgressHUD.options.animationRepeatCount
        imageView.startAnimating()
        
        loadingView.addSubview(imageView)
    }
    
    private func createImages() -> [UIImage] {
        guard let url = Bundle.main.url(forResource: AMProgressHUD.options.imageName, withExtension: "gif") else {
            fatalError("Please be sure that you have provided the true image name or extension of the image")
        }

        guard let imageSource = CGImageSourceCreateWithURL(url as CFURL, nil) else {
            fatalError("Please be sure that you have provided the true image name or extension of the image")
        }
        
        var images:[UIImage] = []
        let imagesCount = CGImageSourceGetCount(imageSource)
        for i in 0..<imagesCount {
            let image = CGImageSourceCreateImageAtIndex(imageSource, i, nil)
            images.append(UIImage(cgImage: image!))
        }
        
        return images
    }
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if AMProgressHUD.options.cancable {
            removeFromSuperview()
        }
    }
    
    
    // MARK: Public methods Show/Dismiss functions
    
    public static func show() {
        if AMProgressHUD.view.superview == nil {
            appWindow?.addSubview(AMProgressHUD.view)
        }
    }
    
    public static func dismiss() {
        if AMProgressHUD.view.superview != nil {
            AMProgressHUD.view.removeFromSuperview()
        }
    }

}

// MARK: AMProgressHUD Options

public class GifHUDOptions {
    /// The duration for the gif image animation, the defualt is `0`.
    public var animationDuration = 1.0
    /// The repeat count for the gif image, the default is `0` (Infinity).
    public var animationRepeatCount = 0
    /// Background color for the loading view, the default is `white`.
    public var backgroundColor = UIColor.white
    /// The alpha for the background of the black view below the loading view, the default is `0`.
    public var backgroundAlpha:CGFloat = 0
    /// The corner radius of the loading view, the default is `0`.
    public var cornerRadius:CGFloat = 20
    /// The gif image name.
    public var imageName = ""
    /// To determine if the loading view cancelable or not, the defualt is `false`.
    public var cancable = false
    /// The gif `imageview` content mode, the defualt is `scaleAspectFit`.
    public var contentMode: UIView.ContentMode = .scaleAspectFit
}
