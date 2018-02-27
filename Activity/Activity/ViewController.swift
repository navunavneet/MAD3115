//
//  ViewController.swift
//  Activity
//
//  Created by MacStudent on 2018-02-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var Actv: UIActivityIndicatorView!
    
    
    @IBAction func txtStart(_ sender: UIButton) {
        self.myProgressView.progress += 0.01
        // set label for progress value
        self.lblProgress.text = "\
        
    }
    
    
    @IBAction func Txtstop(_ sender: Any) {
    }
    
    
    @IBOutlet weak var txtdfr: UISegmentedControl!
    
    
    
    
    @IBOutlet weak var txtimg: UIImageView!
    
    
    
    
    @IBOutlet weak var TXTSP: UILabel!
    
    
    
    @IBOutlet weak var PM: UILabel!
    
    @IBOutlet weak var SV: UILabel!
   
    @IBOutlet weak var SLDRline: UISlider!
    
    @IBOutlet weak var SLDR: UILabel!
    
    @IBOutlet var Line: UIView!
    
    
    @IBOutlet weak var PB: UILabel!
    
    @IBOutlet weak var SP: UILabel!
    
    
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

