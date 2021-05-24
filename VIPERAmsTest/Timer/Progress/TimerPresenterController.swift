//
//  TimerPresenterController.swift
//  VIPERAmsTest
//
//  Created by LPTP-DEV-AMEHDI on 19/05/2021.
//

import Foundation


class TimerPresenterController: TimerPresenter {
    
    func restartTimer() {
        interactor?.restartTimer()
    }
    
    
    func stopTimer() {
        interactor?.stopTimer()
    }
    
    var router: TimerRouter?
    
    var interactor: TimerInteractor? {
        didSet {
            interactor?.fetchTimerNumbers()
        }
    }
    
    //TODO:- make view weak
    weak var view: TimerView? {
        didSet{
            print("View setted")
        }
    }
    
    func interactorResults(number: Int) {
        view?.updateData(number: number)
        checkEvenNumber(number: number) ? view?.setColorGreen() : view?.setColorRed()
    }
    
    
    
    //we can call this method in test to check view logic
    func checkEvenNumber(number: Int) -> Bool {
        return number % 2 == 0
    }
    
}
