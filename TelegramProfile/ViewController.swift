//
//  ViewController.swift
//  TelegramProfile
//
//  Created by Мария Ганеева on 04.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var imageUser: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelUser: UILabel!
    
    private var itemsInfoArrays = [["Избранное", "Недавние звонки", "Устройства", "Папки с чатами"],
                                    ["Уведомления и звуки", "Конфиденциальность", "Данные и память", "Оформление", "Язык", "Стикеры и эмодзи"],
                                    ["Помощь", "Вопросы о Telegram", "Возможности Telegram"]]
    private var countSection = [" "," "," "]

    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self

        self.table.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
        imageUser.frame.size = CGSize(width: 140, height: 140)
        imageUser.layer.cornerRadius = 70
        imageUser.contentMode = .scaleToFill
        imageUser.layer.masksToBounds = true
        self.view.bringSubviewToFront (imageUser)
        
        labelName.text = "Maria Ganeeva"
        labelName.textColor = .black
        
        labelUser.text = "@mganeeva"
        labelUser.textColor = .gray
    }
}

//MARK: - UITableViewDelegate

extension ViewController: UITableViewDelegate{

    func tableView(_ tableView: UITableView, didSelectRowAt IndexPath: IndexPath){
        tableView.deselectRow(at: IndexPath, animated: true)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "One")
        navigationController?.pushViewController(viewController, animated: true)
    }
}


//MARK: - UITableViewDataSource

extension ViewController: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return countSection.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsInfoArrays[section].count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    let section = self.countSection[section]
        return section
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    cell.textLabel?.text = itemsInfoArrays[indexPath.section][indexPath.row]
    cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
    view.tintColor = .clear
        
    let header = view as! UITableViewHeaderFooterView
    header.backgroundView?.backgroundColor = .white
    header.textLabel?.textColor = .black
    header.textLabel?.font = UIFont(name: "Helvetica-Bold", size: 14)
    }
}
