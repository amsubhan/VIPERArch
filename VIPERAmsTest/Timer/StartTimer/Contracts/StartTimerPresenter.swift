//
//  StartTimerPresenter.swift
//  VIPERAmsTest
//
//  Created by LPTP-DEV-AMEHDI on 19/05/2021.
//

import Foundation

protocol StartTimerPresenter: AnyObject {
    var router: StartTimerRouter? { get set }
    var interactor: StartTimerInteractor?  { get set }
    var view: StartTimerView? { get set }
    
    func presentTimerView(vc: StartTimerView)
}
