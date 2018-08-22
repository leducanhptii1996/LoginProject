//
//  ViewController.swift
//  Login
//
//  Created by Apple on 8/20/18.
//  Copyright © 2018 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mUsernameTextField: UITextField!
    @IBOutlet weak var mPasswordTextField: UITextField!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
    }
   @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    //action for button
    
    @IBAction func onGoTouched(_ sender: Any) {
        
        
        if(mUsernameTextField.text == "admin" && mPasswordTextField.text == "1"){
            //tao storyboard
            
            //khi co nhieu storyboard thi moi goi bundle
            let loginStoryBoard = UIStoryboard(name: "Home", bundle: nil)
            //tao man hinh moi
            let after_login = loginStoryBoard.instantiateViewController(withIdentifier: "HOME") as! UITabBarController
            //navigation push

            self.navigationController?.pushViewController(after_login, animated: true)
        }
        else{
            let alertController = UIAlertController(title: "Có lỗi xảy ra", message:
                "Tên đăng nhập hoặc mật khẩu không đúng!", preferredStyle: UIAlertControllerStyle.alert)
            let btnRetry : UIAlertAction = UIAlertAction(title: "Thử lại", style: .default, handler: nil)
            let btnRegister : UIAlertAction = UIAlertAction(title: "Đăng Ký", style: .destructive) { (btn) in
                let registerStoryBoard = UIStoryboard(name: "Main", bundle: nil)
                //tao man hinh moi
                let registerView = registerStoryBoard.instantiateViewController(withIdentifier: "REGISTER") as! RegisterViewController
                //day man hinh ra
                self.navigationController?.pushViewController(registerView, animated: true)
            }
            alertController.addAction(btnRetry)
            alertController.addAction(btnRegister)


            
            self.present(alertController, animated: true, completion: nil)
        }
        
        
        
    }

    @IBAction func onCreatAccTouched(_ sender: Any) {
        //tao moi storyboard
        let registerStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        //tao man hinh moi
        let registerView = registerStoryBoard.instantiateViewController(withIdentifier: "REGISTER") as! RegisterViewController
        //day man hinh ra
        self.navigationController?.pushViewController(registerView, animated: true)
    }
   
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

