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
        number % 2 == 0 ? view?.setColorGreen() : view?.setColorRed()
    }
    
    
}
