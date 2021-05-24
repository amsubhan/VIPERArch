//
//  TimerInteractor.swift
//  VIPERAmsTest
//
//  Created by LPTP-DEV-AMEHDI on 19/05/2021.
//

import Foundation

protocol TimerInteractor: AnyObject {
    var presenter: TimerPresenter? { get set }
    
    func fetchTimerNumbers()
    
    func stopTimer()
    
    func restartTimer()
}
