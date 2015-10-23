//
//  EdgeViewController.swift
//  NeonExamples
//
//  Created by Ivana Rast on 20/10/15.
//  Copyright © 2015 Ivana Rast. All rights reserved.
//

import UIKit

class EdgeViewController: UIViewController {
    
    private var mainView: EdgeView! {return self.view as! EdgeView}
    
    // MARK: - Life cycle
    
    override func loadView() {
        super.loadView()
        
        view = EdgeView(frame: UIScreen.mainScreen().bounds)
    }
}

