//
//  StartTimerViewController.swift
//  VIPERAmsTest
//
//  Created by LPTP-DEV-AMEHDI on 19/05/2021.
//

import UIKit

typealias StartTimerViewTA = UIViewController

class StartTimerViewController: UIViewController, StartTimerView {
    
    static var storyboardName = "StartTimerView"
    
    static var className = "StartTimerViewController"
    
    var presenter: StartTimerPresenter?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func startTimerAction(_ sender: Any) {
        presenter?.presentTimerView(vc: self)
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
