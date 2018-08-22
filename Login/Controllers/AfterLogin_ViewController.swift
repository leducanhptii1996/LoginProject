//
//  AfterLogin_ViewController.swift
//  Login
//
//  Created by Apple on 8/21/18.
//  Copyright © 2018 Apple. All rights reserved.
//

import UIKit

class AfterLogin_ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onBasicTouched(_ sender: Any) {
        let sb = UIStoryboard(name: "Home", bundle: nil)
        let basicView = sb.instantiateViewController(withIdentifier: "BASICTOUCHED") as! Hoc_ViewController
        self.navigationController?.pushViewController(basicView, animated: true)
    }
    
    @IBAction func onAdvanceTouched(_ sender: Any) {
    }
    @IBAction func onProTouched(_ sender: Any) {
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
