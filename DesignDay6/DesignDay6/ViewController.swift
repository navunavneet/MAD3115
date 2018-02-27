//
//  ViewController.swift
//  DesignDay6
//
//  Created by MacStudent on 2018-02-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtCarColor: UITextField!
    @IBOutlet weak var txtCarPlate: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func writePropertyList(){
        //create new dictionart element
        let mycar = NSMutableDictionary()
        mycar["carPlate"] = self.txtCarPlate.text
        mycar["carColor"] = self.txtCarColor.text

    if let plistPath = Bundle.main.path(forResource: "Cars", ofType: "plist"){
        let carPlist = NSMutableArray(contentsOfFile: plistPath)
        carPlist?.add(mycar)
        if (carPlist?.write(toFile: plistPath, atomically: true))!{
            print("carslist : \(String(describing: carPlist))")
    }
    else{
    print("Unable to locate plist file")
    }
}

}
}
