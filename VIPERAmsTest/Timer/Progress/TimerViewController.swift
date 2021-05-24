//
//  TimerViewController.swift
//  VIPERAmsTest
//
//  Created by LPTP-DEV-AMEHDI on 19/05/2021.
//

import UIKit

class TimerViewController: UIViewController, TimerView {
    
    @IBOutlet weak var textF: UITextField!
    @IBOutlet weak var imgV: UIImageView!
    @IBOutlet weak var countDownLabel: UILabel!
    
    @IBOutlet weak var newLabel: UILabel!
    
    var presenter: TimerPresenter?
    
    static var storyboardName = "StartTimerView"
    
    static var className = "TimerViewController"
    
    @IBAction func startTimerAction(_ sender: Any) {
        presenter?.restartTimer()
    }
    
    @IBAction func stopTimerAction(_ sender: Any) {
        presenter?.stopTimer()
        self.dismiss(animated: true, completion: nil)
    }
    
    func updateData(number: Int) {
        print(String(number))
        countDownLabel.text = String(number)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .yellow
        countDownLabel.textColor = .green
        countDownLabel.text = "N/A"
    }
    
    func setColorGreen() {
        countDownLabel.textColor = .green
    }
    
    func setColorRed() {
        countDownLabel.textColor = .red
    }

}

