//
//  CenterViewController.swift
//  NeonExamples
//
//  Created by Ivana Rast on 02/10/15.
//  Copyright © 2015 Ivana Rast. All rights reserved.
//

import UIKit

class CenterViewController: UIViewController {
    
    private var mainView: CenterView! {return self.view as! CenterView}
    
    // MARK: - Life cycle
    
    override func loadView() {
        super.loadView()
        
        view = CenterView(frame: UIScreen.mainScreen().bounds)
    }
}
