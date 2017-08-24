//
//  SecondViewController.swift
//  PassValue-Delegate
//
//  Created by Nick Lee on 2017/8/15.
//  Copyright © 2017年 nicklee. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var displayTextview: UITextView!
    
    @IBAction func btnBack(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
        
    }

}

extension SecondViewController: FetchTextDelegate {
    
    func fetchText(_ text: String) {
        
        displayTextview.text = text
        
    }
    
}
