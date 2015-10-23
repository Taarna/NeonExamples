//
//  AlignViewController.swift
//  NeonExamples
//
//  Created by Ivana Rast on 20/10/15.
//  Copyright © 2015 Ivana Rast. All rights reserved.
//

import UIKit

class AlignViewController: UIViewController {
    
    private var mainView: AlignView! {return self.view as! AlignView}
    
    // MARK: - Life cycle
    
    override func loadView() {
        super.loadView()
        
        view = AlignView(frame: UIScreen.mainScreen().bounds)
    }
}
