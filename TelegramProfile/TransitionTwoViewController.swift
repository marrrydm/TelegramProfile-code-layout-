//
//  TransitionTwoViewController.swift
//  TelegramProfile
//
//  Created by Мария Ганеева on 04.02.2022.
//

import UIKit

class TransitionTwoViewController: UIViewController {

    @IBOutlet weak var labelThanks: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    labelThanks.textColor = .blue
    labelThanks.font = .boldSystemFont(ofSize: 30)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
