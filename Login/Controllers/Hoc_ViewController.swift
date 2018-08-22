//
//  Hoc_ViewController.swift
//  Login
//
//  Created by Apple on 8/21/18.
//  Copyright © 2018 Apple. All rights reserved.
//

import UIKit

class Hoc_ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var listBaiHoc: UITableView!
    var array:[String]!
    override func viewDidLoad() {
        super.viewDidLoad()
        //dang ki xib
        listBaiHoc.register(UINib(nibName: "BasicLessonTableViewCell", bundle: nil), forCellReuseIdentifier: "BasicLessonTableViewCell")
        
        //phải khai báo .datasoure
//        listBaiHoc.dataSource=self
        array=["Bai1","Bai2","Bai3","Bai4","Bai5","Bai6","Bai7","Bai8","Bai9","Bai10"]
        // Do any additional setup after loading the view.
    }
   
     //table view basic
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BasicLessonTableViewCell") as! BasicLessonTableViewCell
        cell.setData(title: array[indexPath.row])
//        cell.imgIconBaiHoc.image = UIImage(named: "book")
//        cell.lbl_baihoc.text = array[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
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
