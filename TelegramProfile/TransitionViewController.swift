//
//  FavoriteViewController.swift
//  TelegramProfile
//
//  Created by Мария Ганеева on 04.02.2022.
//

import UIKit

class TransitionViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = "Переход осуществлен!"
        label.textColor = .brown
        
    }
    
    @IBAction func goToNext(){
        
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "Two")
            present(viewController, animated: true, completion: nil)//последнее это кому потом управление передавать
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
