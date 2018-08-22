//
//  RegisterViewController.swift
//  Login
//
//  Created by Apple on 8/21/18.
//  Copyright © 2018 Apple. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var mRegisterUsername: UILabel!
    @IBOutlet weak var mRegisterPassword: UILabel!
    @IBOutlet weak var mTextUsername: UITextField!
    
    @IBOutlet weak var mTextPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onDoRegisterTouched(_ sender: Any) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
