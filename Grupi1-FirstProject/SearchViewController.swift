//
//  SearchViewController.swift
//  Grupi1-FirstProject
//
//  Created by Cacttus Education 05 on 2/24/18.
//  Copyright © 2018 Cacttus Education 05. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController,UITextFieldDelegate {
    
    var labelsPassed :String = ""
    
    @IBOutlet weak var navBarTxtfield: UITextField!
    @IBOutlet weak var searchVCLBL: UILabel!
    
    @IBAction func dergo123(_ sender: Any) {
        print("123123")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navBarTxtfield.text = labelsPassed
        navBarTxtfield.delegate=self
        searchVCLBL.text = navBarTxtfield.text
        
//
//        let fastForwardBtn = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.fastForward, target: self, action: nil)
//
//        navigationItem.rightBarButtonItem = fastForwardBtn
      
    
    }
  
    
    override func viewWillAppear(_ animated: Bool) {
        let titulli:String = "Cacttus Education"
        var arr = Array(0...1000)
       
        if (titulli.contains("cat")){
            for num in arr{
                print(arr[num], terminator:", ")
            }
        }
        else{
            for char in titulli{
                print("\(char)",terminator:" " )
            }
            print("")
        }
    }
    

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        self.searchVCLBL.text = (navBarTxtfield.text! as NSString).replacingCharacters(in: range, with: string)
        return true
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
