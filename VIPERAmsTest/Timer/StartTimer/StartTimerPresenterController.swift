//
//  StartTimerPresenterController.swift
//  VIPERAmsTest
//
//  Created by LPTP-DEV-AMEHDI on 19/05/2021.
//

import Foundation

class StartTimerPresenterController: StartTimerPresenter {

    var router: StartTimerRouter?
    
    var interactor: StartTimerInteractor?
    
    var view: StartTimerView?
    
    func presentTimerView(vc: StartTimerView) {
        router?.routeToTimerVC(presentingVC: vc)
    }
    
    
}
