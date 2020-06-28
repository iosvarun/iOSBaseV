//
//  CustomNavigationView.swift
//  BaseV
//
//  Created by Varun Kumar on 13/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import UIKit

protocol CustomNavigationViewProtocol: class {
    func profileBtnTapped()
    func notificationBtnTapped()
    func closeBtnTapped()
    func backbtnTapped()
}
class CustomNavigationView: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var notificationBtn: UIButton!
    @IBOutlet weak var profileBtn: UIButton!
    @IBOutlet weak var closeBtn: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var badgeCountLabel: UILabel!
    
    @IBOutlet weak var logoImageBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var bgImageTopConstraint: NSLayoutConstraint!
    

    
    var isSearchBtnPresent = true
    weak var delegate: CustomNavigationViewProtocol?
    
    var hideBackground: Bool = false{
        didSet{
            backgroundImageView.isHidden = hideBackground
        }
    }
    
    // MARK: UIView Life Cycle Methods
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    // Function for initial view setup
    private func commonInit() {
        self.clipsToBounds = false           // show clipped image
        Bundle.main.loadNibNamed("CustomNavigationView", owner: self, options: nil)
        addSubview(self.contentView)
        self.contentView.frame = self.bounds
        self.contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        updateNavigationBackgroundImage()    // update navigation background image y position
        badgeCountLabel.clipsToBounds = true
        badgeCountLabel.layer.cornerRadius = badgeCountLabel.frame.height / 2
        closeBtn.isHidden = true
    }
    
    // this method update top constraints of background image in navigation bar
    private func updateNavigationBackgroundImage (){
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        bgImageTopConstraint.constant = -statusBarHeight
        
        if statusBarHeight > 20{
            // notch devices
            logoImageBottomConstraint.constant = 16
        }else{
            logoImageBottomConstraint.constant = 8
        }
        updateConstraintsIfNeeded()
    }
    
    // MARK: - Actions
    
    @IBAction func didTapProfileBtn(_ sender: Any) {
        delegate?.profileBtnTapped()
    }
    
    @IBAction func didTapNotificationBtn(_ sender: Any) {
        delegate?.notificationBtnTapped()
    }
    
    @IBAction func didTapCloseonBtn(_ sender: Any) {
        delegate?.closeBtnTapped()
    }
    
    @IBAction func didTapBackButton(_ sender: Any) {
        delegate?.backbtnTapped()
    }
    
    
}
