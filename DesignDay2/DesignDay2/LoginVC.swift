//
//  ViewController.swift
//  DesignDay2
//
//  Created by MacStudent on 2018-02-21.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit




class eWelcomeVC: UIViewController {
    var welcomeTitle: String
    
    overide func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = "Welcome"
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = "Register"
        
        let btnSubmit =
        UIBarButtonItem(title: "Submit",style: .plain, target: self,
        action:
        #selector(displayValues))
        
        self.navigationItem.rightBarButtonItem = btnSubmit
        
}
    @objc private func displatValues(){
        let infoAlert = UIAlertController(title: "Verify", message: "please verify your deatils", preferredStyle: .alert)
        
        infoAlert.addAction(UIAlertAction(Title: "Confirm",style.default, handler: {_ in self.displayWelcomeScreeen}))
        
        let welcomeVC = welcomeSB.instantiateVIewController(withIdentifier: "WelcomeScreen")
        
        navigationController?.pushViewController(welcome)
        
        
        
        
        
        
        self.present(infoAlert, animated: true)
        
        
        
    }




class LoginVC: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func LoginAction(_ sender: UIBarButtonItem) {
    }
    @IBAction func btnLoginAction(_ sender: UIButton) {
     let Email = txtEmail.text
    let Password = txtPassword.text
        
        if (Email == "test" && Password == "test") {
        
        
        let infoAlert =
            UIAlertController(title: "Login Sucessful", message: "You are authenticated",preferredStyle: .alert)
        
        infoAlert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        
        self.present(infoAlert, animated: true, completion: nil)
        
        
        
        
        
    }
    
    
}
    
    @IBAction func RegisterAction(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func btnRegister(_ sender: UIButton) {
    
        let registerSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        
        let registerVC = registerSB.instantiateViewController(withIdentifier: "RegistrationScreen")
       // self.present(registerVC, animated: true, completion: nil)
        
        
        navigationController?.pushViewController(registerVC, animated: true)
    }
}
