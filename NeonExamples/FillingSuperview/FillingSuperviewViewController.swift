//
//  FillingSuperviewViewController.swift
//  NeonExamples
//
//  Created by Ivana Rast on 19/10/15.
//  Copyright © 2015 Ivana Rast. All rights reserved.
//

import UIKit

class FillingSuperViewViewController: UIViewController {
    
    private var mainView: FillingSuperviewView! {return self.view as! FillingSuperviewView}
    
    // MARK: - Life cycle
    
    override func loadView() {
        super.loadView()
        
        view = FillingSuperviewView(frame: UIScreen.mainScreen().bounds)
    }
}
