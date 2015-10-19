//
//  CenterView.swift
//  NeonExamples
//
//  Created by Ivana Rast on 02/10/15.
//  Copyright © 2015 Ivana Rast. All rights reserved.
//

import UIKit

class CenterView: UIView {
    
    // MARK: - Private properties
    
    private var centerView = UIView()
    
    // MARK: - Life cycle
    
    override init(frame aRect: CGRect) {
        super.init(frame: aRect)
        
        self.backgroundColor = UIColor(red: 199.0/255.0, green: 43.0/255.0, blue: 43.0/255.0, alpha: 1.0)
        
        self.initializeElements()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    // MARK: - Private methods
    
    private func initializeElements() {
        
        centerView.backgroundColor = UIColor(red: 96.0/255.0, green: 96.0/255.0, blue: 96.0/255.0, alpha: 1.0)
        
        self.addSubview(centerView)
    }
    
    // MARK: - Layout
    
    override func layoutSubviews() {
        
        let centerViewWidth = self.frame.size.width / 2.0
        let centerViewHeight = self.frame.size.height / 2.0
        
        centerView.anchorInCenter(width: centerViewWidth, height: centerViewHeight)
    }
}
