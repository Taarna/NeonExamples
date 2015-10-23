//
//  FillingEdgePartTwoViewcontroller.swift
//  NeonExamples
//
//  Created by Ivana Rast on 20/10/15.
//  Copyright © 2015 Ivana Rast. All rights reserved.
//

import UIKit

class FillingEdgePartTwoViewController: UIViewController {
    
    private var mainView: FillingEdgePartTwoView! {return self.view as! FillingEdgePartTwoView}
    
    // MARK: - Life cycle
    
    override func loadView() {
        super.loadView()
        
        view = FillingEdgePartTwoView(frame: UIScreen.mainScreen().bounds)
    }
}
