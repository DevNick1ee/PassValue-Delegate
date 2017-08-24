//
//  FirstViewController.swift
//  PassValue-Delegate
//
//  Created by Nick Lee on 2017/8/15.
//  Copyright © 2017年 nicklee. All rights reserved.
//

import UIKit

protocol FetchTextDelegate {
    
    func fetchText(_ text: String)
    
}

class FirstViewController: UIViewController {
    
    var delegate: FetchTextDelegate?
    
    var secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController

    @IBOutlet weak var inputTextfield: UITextField!

    @IBAction func btnSend(_ sender: UIButton) {

        self.present(secondVC, animated: true, completion: nil)
        
        self.delegate = secondVC
        
        self.delegate?.fetchText(inputTextfield.text!)

    }

}
