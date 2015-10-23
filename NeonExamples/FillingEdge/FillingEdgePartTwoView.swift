//
//  FillingEdgePartTwoView.swift
//  NeonExamples
//
//  Created by Ivana Rast on 20/10/15.
//  Copyright © 2015 Ivana Rast. All rights reserved.
//

import UIKit

class FillingEdgePartTwoView: UIView {
    
    private let squareSize: CGFloat = 70.0
    private let padding: CGFloat = 10.0
    
    private let smallerSquareSize: CGFloat = 30.0
    
    // MARK: - Private properties
    
    private let topView = UIView()
    private let leftView = UIView()
    private let bottomView = UIView()
    private let rightView = UIView()
    
    // MARK: - Life cycle
    
    override init(frame aRect: CGRect) {
        super.init(frame: aRect)
        
        self.backgroundColor = UIColor.whiteColor()
//        self.backgroundColor = UIColor(red: 216.0/255.0, green: 211.0/255.0, blue: 147.0/255.0, alpha: 1.0)
        
        self.initializeElements()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    // MARK: - Private methods
    
    private func initializeElements() {
        
        //Top
        topView.backgroundColor = UIColor(red: 224.0/255.0, green: 139.0/255.0, blue: 144.0/255.0, alpha: 0.6)
        self.addSubview(topView)
        
        //Left
        leftView.backgroundColor = UIColor(red: 209.0/255.0, green: 43.0/255.0, blue: 96.0/255.0, alpha: 0.6)
        self.addSubview(leftView)
        
        //Bottom
        bottomView.backgroundColor = UIColor(red: 244.0/255.0, green: 190.0/255.0, blue: 48.0/255.0, alpha: 0.6)
        self.addSubview(bottomView)
        
        //Right
        rightView.backgroundColor = UIColor(red: 168.0/255.0, green: 108.0/255.0, blue: 78.0/255.0, alpha: 0.6)
        self.addSubview(rightView)
    }
    
    // MARK: - Layout
    
    override func layoutSubviews() {
        
        //Top
        topView.anchorAndFillEdge(.Top, xPad: 0.0, yPad: 0.0, otherSize: squareSize)
        
        //Left
        leftView.anchorAndFillEdge(.Left, xPad: 0.0, yPad: squareSize, otherSize: squareSize)
        
        //Bottom
        bottomView.anchorAndFillEdge(.Bottom, xPad: 0.0, yPad: 0.0, otherSize: squareSize)
        
        //Right
        rightView.anchorAndFillEdge(.Right, xPad: 0.0, yPad: squareSize, otherSize: squareSize)
    }
}
