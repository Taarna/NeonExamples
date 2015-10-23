//
//  CornerView.swift
//  NeonExamples
//
//  Created by Ivana Rast on 20/10/15.
//  Copyright © 2015 Ivana Rast. All rights reserved.
//

import UIKit

class CornerView: UIView {
    
    private let squareSize: CGFloat = 70.0
    private let padding: CGFloat = 10.0
    
    private let smallerSquareSize: CGFloat = 30.0
    
    // MARK: - Private properties
    
    private let topRightView = UIView()
    private let topLeftView = UIView()
    private let bottomRightView = UIView()
    private let bottomLeftView = UIView()
    
    private let topRightSmallerView = UIView()
    private let topLeftSmallerView = UIView()
    private let bottomRightSmallerView = UIView()
    private let bottomLeftSmallerView = UIView()
    
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
        
        //Top right
        topRightView.backgroundColor = UIColor(red: 224.0/255.0, green: 139.0/255.0, blue: 144.0/255.0, alpha: 1.0)
        self.addSubview(topRightView)
        
        topRightSmallerView.backgroundColor = UIColor(red: 244.0/255.0, green: 190.0/255.0, blue: 48.0/255.0, alpha: 1.0)
        topRightView.addSubview(topRightSmallerView)
        
        //Top left
        topLeftView.backgroundColor = UIColor(red: 209.0/255.0, green: 43.0/255.0, blue: 96.0/255.0, alpha: 1.0)
        self.addSubview(topLeftView)
        
        topLeftSmallerView.backgroundColor = UIColor(red: 224.0/255.0, green: 139.0/255.0, blue: 144.0/255.0, alpha: 1.0)
        topLeftView.addSubview(topLeftSmallerView)
        
        //Bottom right
        bottomRightView.backgroundColor = UIColor(red: 244.0/255.0, green: 190.0/255.0, blue: 48.0/255.0, alpha: 1.0)
        self.addSubview(bottomRightView)
        
        bottomRightSmallerView.backgroundColor = UIColor(red: 168.0/255.0, green: 108.0/255.0, blue: 78.0/255.0, alpha: 1.0)
        bottomRightView.addSubview(bottomRightSmallerView)
        
        //Bottom left
        bottomLeftView.backgroundColor = UIColor(red: 168.0/255.0, green: 108.0/255.0, blue: 78.0/255.0, alpha: 1.0)
        self.addSubview(bottomLeftView)
        
        bottomLeftSmallerView.backgroundColor = UIColor(red: 209.0/255.0, green: 43.0/255.0, blue: 96.0/255.0, alpha: 1.0)
        bottomLeftView.addSubview(bottomLeftSmallerView)
    }
    
    // MARK: - Layout
    
    override func layoutSubviews() {
        
        topRightView.anchorInCorner(.TopRight, xPad: padding, yPad: padding, width: squareSize, height: squareSize)
        topRightSmallerView.anchorInCorner(.BottomLeft, xPad: 0.0, yPad: 0.0, width: smallerSquareSize, height: smallerSquareSize)
        
        topLeftView.anchorInCorner(.TopLeft, xPad: padding, yPad: padding, width: squareSize, height: squareSize)
        topLeftSmallerView.anchorInCorner(.BottomRight, xPad: 0.0, yPad: 0.0, width: smallerSquareSize, height: smallerSquareSize)
        
        bottomRightView.anchorInCorner(.BottomRight, xPad: padding, yPad: padding, width: squareSize, height: squareSize)
        bottomRightSmallerView.anchorInCorner(.TopLeft, xPad: 0.0, yPad: 0.0, width: smallerSquareSize, height: smallerSquareSize)
        
        bottomLeftView.anchorInCorner(.BottomLeft, xPad: padding, yPad: padding, width: squareSize, height: squareSize)
        bottomLeftSmallerView.anchorInCorner(.TopRight, xPad: 0.0, yPad: 0.0, width: smallerSquareSize, height: smallerSquareSize)
    }
}
