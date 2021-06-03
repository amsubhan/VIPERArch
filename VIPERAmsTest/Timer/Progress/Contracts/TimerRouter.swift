//
//  TimerRouter.swift
//  VIPERAmsTest
//
//  Created by LPTP-DEV-AMEHDI on 19/05/2021.
//

import Foundation

//typealias EntryPoint = TimerView

protocol TimerRouter: AnyObject {
//    static func initializeTimer() -> TimerRouter
    func dismissVC()
}


class TimerWire: TimerRouter {
    
    weak var presenter: TimerPresenter?
    
    func dismissVC() {
        presenter?.dismissView()
    }
}
//class TimeWire : TimerRouter {
//
//    static func initializeTimer() -> TimerRouter {
//
////        var view = TimerViewController.getView()
////
////        let interactor = TimerInteractorController()
////
////        let presenter = TimerPresenterController()
////
////        let router = TimeWire()
////
////        view!.presenter = presenter
////
////        interactor.presenter = presenter
////
////
////        presenter.router = router
////        presenter.view = view
////        presenter.interactor = interactor
//
//
//
//        return router
//    }
//
//
//}


