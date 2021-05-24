//
//  TimerPresenter.swift
//  VIPERAmsTest
//
//  Created by LPTP-DEV-AMEHDI on 19/05/2021.
//

import Foundation

protocol TimerPresenter: AnyObject {
    var router: TimerRouter? { get set }
    var interactor: TimerInteractor?  { get set }
    var view: TimerView? { get set }
    
    func interactorResults(number: Int )
    
    func stopTimer()
    
    func restartTimer()
}
