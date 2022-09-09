//
//  ViewController.swift
//  NavigationApp
//
//  Created by Alexander Zub on 09.09.2022.
//

import UIKit

class ViewController: UIViewController {

    let storyboardInstance = UIStoryboard(name: "Main", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.prompt = "Подсказка"
        self.navigationItem.title = "Заголовок сцены"
        self.navigationItem.backButtonTitle = "Назад"
        
    }
    @IBAction func toGreenScene(_ sender: UIButton) {
        let nextViewController = storyboardInstance.instantiateViewController(withIdentifier: "greenViewController")
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    @IBAction func toYellowScene(_ sender: UIButton) {
        let nextViewController = storyboardInstance.instantiateViewController(withIdentifier: "yellowViewController")
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    @IBAction func toRootScene(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func toPreviousScene(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}

