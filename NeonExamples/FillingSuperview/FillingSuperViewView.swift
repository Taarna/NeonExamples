//
//  FillingSuperViewView.swift
//  NeonExamples
//
//  Created by Ivana Rast on 19/10/15.
//  Copyright © 2015 Ivana Rast. All rights reserved.
//

import UIKit

class FillingSuperviewView: UIView {
    
    // MARK: - Private properties
    
    private let grayView = UIView()
    private let redView = UIView()
    
    // MARK: - Life cycle
    
    override init(frame aRect: CGRect) {
        super.init(frame: aRect)
        
        self.backgroundColor = UIColor.whiteColor()
        
        self.initializeElements()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    // MARK: - Private methods
    
    private func initializeElements() {
        
        //Gray view
        grayView.backgroundColor = UIColor(red: 214.0/255.0, green: 228.0/255.0, blue: 218.0/255.0, alpha: 1.0)
        
        self.addSubview(grayView)
        
        //Red view
        redView.backgroundColor = UIColor(red: 99.0/255.0, green: 138.0/255.0, blue: 151.0/255.0, alpha: 1.0)
        
        grayView.addSubview(redView)
    }
    
    // MARK: - Layout
    
    override func layoutSubviews() {
        
        grayView.fillSuperview()
        redView.fillSuperview(left: 30.0, right: 30.0, top: 30.0, bottom: 30.0)
    }
}
