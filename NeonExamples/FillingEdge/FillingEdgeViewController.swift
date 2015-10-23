//
//  FillingEdgeViewController.swift
//  NeonExamples
//
//  Created by Ivana Rast on 20/10/15.
//  Copyright © 2015 Ivana Rast. All rights reserved.
//

import UIKit

class FillingEdgeViewController: UIViewController {
    
    private var mainView: FillingEdgeView! {return self.view as! FillingEdgeView}
    
    // MARK: - Life cycle
    
    override func loadView() {
        super.loadView()
        
        view = FillingEdgeView(frame: UIScreen.mainScreen().bounds)
    }
}
