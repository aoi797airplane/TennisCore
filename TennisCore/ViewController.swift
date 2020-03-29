//
//  ViewController.swift
//  TennisCore
//
//  Created by 守本蒼生 on 2020/03/29.
//  Copyright © 2020 blueforestapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var aPointLabel: UILabel!
    @IBOutlet weak var bPointLabel: UILabel!
    
    let countMethod = CountMethod()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updatePointLabel() {
        aPointLabel.text = countMethod.pointList[countMethod.pointCount[0]]
        bPointLabel.text = countMethod.pointList[countMethod.pointCount[1]]
    }
    
    @IBAction func aPlayer1Action(_ sender: Any) {
        countMethod.aGetPointAction()
        updatePointLabel()
    }
    
    @IBAction func bPlayer1Action(_ sender: Any) {
        countMethod.bGetPointAction()
        updatePointLabel()
    }
}

