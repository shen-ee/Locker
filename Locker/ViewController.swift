//
//  ViewController.swift
//  Locker
//
//  Created by Shen Yi on 2017/3/22.
//  Copyright © 2017年 Shen Yi. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet var tv:UITextView?
    
    @IBOutlet var tf_number:UITextField?
    
    @IBOutlet var tf_password:UITextField?
    
    @IBOutlet var tf_search:UITextField?
    
    let userDefault = UserDefaults.standard
    
    var lockDictionary = [String:String]()
    
    var str_number = ""
    
    var str_password = ""
    
    var temp_dic = [String:String]()
    
    var temp_str = ""
    
    
    @IBAction func ButtonPressed(sender:AnyObject){
        
        //String tex = tf?.text
        str_number = (tf_number?.text)!
        str_password = (tf_password?.text)!
        lockDictionary[str_number] = str_password
        userDefault.set(lockDictionary, forKey: "dic")
        tv?.text = "存储成功！"
        tf_number?.text=""
        tf_password?.text=""
        
    }
    
    @IBAction func ButtonPressed2(sender:AnyObject){
        
        temp_dic = userDefault.dictionary(forKey: "dic") as! [String : String]
        
        temp_str = (tf_search?.text)!
        
        if(temp_dic[temp_str]==nil){
            tv?.text = "查无此车"
        }
        else{
            tv?.text = "车号：\(temp_str)\n"+"密码："+temp_dic[temp_str]!
        }
        //tv?.text=tf?.text
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        //lockDictionary = userDefault.dictionary(forKey: "dic")as! [String : String]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

