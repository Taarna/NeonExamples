//
//  FillingEdgeView.swift
//  NeonExamples
//
//  Created by Ivana Rast on 20/10/15.
//  Copyright © 2015 Ivana Rast. All rights reserved.
//

import UIKit

class FillingEdgeView: UIView {
    
    private let squareSize: CGFloat = 70.0
    private let padding: CGFloat = 10.0
    
    private let smallerSquareSize: CGFloat = 30.0
    
    // MARK: - Private properties
    
    private let topView = UIView()
    
    private let bottomView = UIView()
    
    // MARK: - Life cycle
    
    override init(frame aRect: CGRect) {
        super.init(frame: aRect)
        
        self.backgroundColor = UIColor(red: 216.0/255.0, green: 211.0/255.0, blue: 147.0/255.0, alpha: 1.0)
        
        self.initializeElements()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    // MARK: - Private methods
    
    private func initializeElements() {
        
        //Top
        topView.backgroundColor = UIColor(red: 224.0/255.0, green: 139.0/255.0, blue: 144.0/255.0, alpha: 1.0)
        self.addSubview(topView)
        
        //Bottom
        bottomView.backgroundColor = UIColor(red: 244.0/255.0, green: 190.0/255.0, blue: 48.0/255.0, alpha: 1.0)
        self.addSubview(bottomView)
    }
    
    // MARK: - Layout
    
    override func layoutSubviews() {
        
        //Top
        topView.anchorAndFillEdge(.Top, xPad: padding, yPad: padding, otherSize: squareSize)
        
        //Bottom
        bottomView.anchorAndFillEdge(.Bottom, xPad: 0.0, yPad: 0.0, otherSize: squareSize)
    }
}
