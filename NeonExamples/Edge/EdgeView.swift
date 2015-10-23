//
//  EdgeView.swift
//  NeonExamples
//
//  Created by Ivana Rast on 20/10/15.
//  Copyright © 2015 Ivana Rast. All rights reserved.
//

import UIKit

class EdgeView: UIView {
    
    private let squareSize: CGFloat = 70.0
    private let padding: CGFloat = 10.0
    
    private let smallerSquareSize: CGFloat = 30.0
    
    // MARK: - Private properties
    
    private let topView = UIView()
    private let leftView = UIView()
    private let bottomView = UIView()
    private let rightView = UIView()
    
    private let topSmallerView = UIView()
    private let leftSmallerView = UIView()
    private let bottomSmallerView = UIView()
    private let rightSmallerView = UIView()
    
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
        
        topSmallerView.backgroundColor = UIColor(red: 244.0/255.0, green: 190.0/255.0, blue: 48.0/255.0, alpha: 1.0)
        topView.addSubview(topSmallerView)
        
        //Left
        leftView.backgroundColor = UIColor(red: 209.0/255.0, green: 43.0/255.0, blue: 96.0/255.0, alpha: 1.0)
        self.addSubview(leftView)
        
        leftSmallerView.backgroundColor = UIColor(red: 224.0/255.0, green: 139.0/255.0, blue: 144.0/255.0, alpha: 1.0)
        leftView.addSubview(leftSmallerView)
        
        //Bottom
        bottomView.backgroundColor = UIColor(red: 244.0/255.0, green: 190.0/255.0, blue: 48.0/255.0, alpha: 1.0)
        self.addSubview(bottomView)
        
        bottomSmallerView.backgroundColor = UIColor(red: 168.0/255.0, green: 108.0/255.0, blue: 78.0/255.0, alpha: 1.0)
        bottomView.addSubview(bottomSmallerView)
        
        //Right
        rightView.backgroundColor = UIColor(red: 168.0/255.0, green: 108.0/255.0, blue: 78.0/255.0, alpha: 1.0)
        self.addSubview(rightView)
        
        rightSmallerView.backgroundColor = UIColor(red: 209.0/255.0, green: 43.0/255.0, blue: 96.0/255.0, alpha: 1.0)
        rightView.addSubview(rightSmallerView)
    }
    
    // MARK: - Layout
    
    override func layoutSubviews() {
        
        //Top
        topView.anchorToEdge(.Top, padding: padding, width: squareSize, height: squareSize)
        topSmallerView.anchorToEdge(.Bottom, padding: 0.0, width: smallerSquareSize, height: smallerSquareSize)
        
        //Left
        leftView.anchorToEdge(.Left, padding: padding, width: squareSize, height: squareSize)
        leftSmallerView.anchorToEdge(.Right, padding: 0.0, width: smallerSquareSize, height: smallerSquareSize)
        
        //Bottom
        bottomView.anchorToEdge(.Bottom, padding: padding, width: squareSize, height: squareSize)
        bottomSmallerView.anchorToEdge(.Top, padding: 0.0, width: smallerSquareSize, height: smallerSquareSize)
        
        //Right
        rightView.anchorToEdge(.Right, padding: padding, width: squareSize, height: squareSize)
        rightSmallerView.anchorToEdge(.Left, padding: 0.0, width: smallerSquareSize, height: smallerSquareSize)
    }
}
