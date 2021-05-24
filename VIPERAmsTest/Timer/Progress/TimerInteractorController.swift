//
//  TimerInteractorController.swift
//  VIPERAmsTest
//
//  Created by LPTP-DEV-AMEHDI on 19/05/2021.
//

import Foundation

class TimerInteractorController: TimerInteractor {
    
    func restartTimer() {
        timer?.invalidate()
        count = 10
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runTimedCode), userInfo: nil, repeats: true)
    }
    
    
    func stopTimer() {
        timer?.invalidate()
    }
    
    
    weak var presenter: TimerPresenter?{
        didSet {
            print("Setted presenter")
            
        }
    }
    
    weak var timer: Timer?
    
    var count = 10
    
    func fetchTimerNumbers() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runTimedCode), userInfo: nil, repeats: true)
        
        presenter?.interactorResults(number: 90)
    }
    
    @objc func runTimedCode(){
        
        if count < 1 {
            timer?.invalidate()
        }
        
        presenter?.interactorResults(number: count)
        count -= 1
    }
    
}
