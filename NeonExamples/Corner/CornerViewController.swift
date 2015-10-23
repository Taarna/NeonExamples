//
//  CornerViewController.swift
//  NeonExamples
//
//  Created by Ivana Rast on 20/10/15.
//  Copyright © 2015 Ivana Rast. All rights reserved.
//

import UIKit

class CornerViewController: UIViewController {
    
    private var mainView: CornerView! {return self.view as! CornerView}
    
    // MARK: - Life cycle
    
    override func loadView() {
        super.loadView()
        
        view = CornerView(frame: UIScreen.mainScreen().bounds)
    }
}
