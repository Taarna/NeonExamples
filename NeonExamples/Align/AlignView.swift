//
//  AlignView.swift
//  NeonExamples
//
//  Created by Ivana Rast on 20/10/15.
//  Copyright © 2015 Ivana Rast. All rights reserved.
//

import UIKit

class AlignView: UIView {
    
    private let lblHeight: CGFloat = 40.0
    private let lblWidth: CGFloat = 40.0
    
    private let padding: CGFloat = 10.0
    
    // MARK: - Private properties
    
    private let lblOne = UILabel()
    private let lblTwo = UILabel()
    private let lblThree = UILabel()
    private let lblFour = UILabel()
    
    // MARK: - Life cycle
    
    override init(frame aRect: CGRect) {
        super.init(frame: aRect)
        
        self.backgroundColor = UIColor(red: 189.0/255.0, green: 187.0/255.0, blue: 206.0/255.0, alpha: 1.0)
        
        self.initializeElements()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    // MARK: - Private methods
    
    private func initializeElements() {
        
        //Label 1
        lblOne.text = "1"
        lblOne.textColor = UIColor.blackColor()
        lblOne.numberOfLines = 1
        lblOne.textAlignment = .Center
        lblOne.backgroundColor = UIColor(red: 159.0/255.0, green: 142.0/255.0, blue: 97.0/255.0, alpha: 1.0)
        
        self.addSubview(lblOne)
        
        //Label 2
        lblTwo.text = "2"
        lblTwo.textColor = UIColor.blackColor()
        lblTwo.numberOfLines = 1
        lblTwo.textAlignment = .Center
        lblTwo.backgroundColor = UIColor(red: 232.0/255.0, green: 232.0/255.0, blue: 76.0/255.0, alpha: 1.0)
        
        self.addSubview(lblTwo)
        
        //Label 3
        lblThree.text = "3"
        lblThree.textColor = UIColor.blackColor()
        lblThree.numberOfLines = 1
        lblThree.textAlignment = .Center
        lblThree.backgroundColor = UIColor(red: 91.0/255.0, green: 160.0/255.0, blue:193.0/255.0, alpha: 1.0)
        
        self.addSubview(lblThree)
        
        //Label 4
        lblFour.text = "4"
        lblFour.textColor = UIColor.blackColor()
        lblFour.numberOfLines = 1
        lblFour.textAlignment = .Center
        lblFour.backgroundColor = UIColor(red: 159.0/255.0, green: 142.0/255.0, blue: 97.0/255.0, alpha: 1.0)
        
        self.addSubview(lblFour)
    }
    
    // MARK: - Layout
    
    override func layoutSubviews() {
        
        lblOne.anchorAndFillEdge(.Top, xPad: 0.0, yPad: 0.0, otherSize: lblHeight)

        lblTwo.align(.UnderMatchingLeft, relativeTo: lblOne, padding: 0.0, width: lblWidth, height: lblHeight)
        
        lblThree.align(.UnderMatchingRight, relativeTo: lblOne, padding: 0.0, width: lblWidth, height: lblHeight)
        
        lblFour.alignAndFillWidth(align: .UnderMatchingLeft, relativeTo: lblTwo, padding: 0.0, height: lblHeight)
    }
}
