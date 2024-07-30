//
//  HomeViewController.swift
//  TrackPodTest
//
//  Created by cuongnv on 30/7/24.
//

import UIKit
import GoogleMobileAds

public class HomeViewController: UIViewController {
    
    var bannerView: GADBannerView!
    
    @IBOutlet public weak var lbText: UILabel!
    
    public var callback: (() -> Void)?

    public override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewWidth = view.frame.inset(by: view.safeAreaInsets).width

            // Here the current interface orientation is used. Use
            // GADLandscapeAnchoredAdaptiveBannerAdSizeWithWidth or
            // GADPortraitAnchoredAdaptiveBannerAdSizeWithWidth if you prefer to load an ad of a
            // particular orientation,
            let adaptiveSize = GADCurrentOrientationAnchoredAdaptiveBannerAdSizeWithWidth(viewWidth)
            bannerView = GADBannerView(adSize: adaptiveSize)

            addBannerViewToView(bannerView)
        
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2435281174"
          bannerView.rootViewController = self

          bannerView.load(GADRequest())
    }
    
    func addBannerViewToView(_ bannerView: GADBannerView) {
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bannerView)
        view.addConstraints(
          [NSLayoutConstraint(item: bannerView,
                              attribute: .bottom,
                              relatedBy: .equal,
                              toItem: view.safeAreaLayoutGuide,
                              attribute: .bottom,
                              multiplier: 1,
                              constant: 0),
           NSLayoutConstraint(item: bannerView,
                              attribute: .centerX,
                              relatedBy: .equal,
                              toItem: view,
                              attribute: .centerX,
                              multiplier: 1,
                              constant: 0)
          ])
       }

    @IBAction func actionButton() {
        callback?()
    }

}
