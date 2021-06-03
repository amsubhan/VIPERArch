//
//  StartTimerRouter.swift
//  VIPERAmsTest
//
//  Created by LPTP-DEV-AMEHDI on 19/05/2021.
//

import Foundation
import UIKit

typealias EntryPoint = StartTimerView

protocol StartTimerRouter {
    func routeToTimerVC(presentingVC: StartTimerView)
    
    var entryPoint: EntryPoint? { get set }
}

class StartTimerWire : StartTimerRouter{
    
    var entryPoint: EntryPoint?
    
    static func initializeStartTimer() -> StartTimerRouter {
        let router = StartTimerWire()
        
        var view = UIStoryboard(name: StartTimerViewController.storyboardName, bundle: nil).instantiateViewController(identifier: StartTimerViewController.className) as? StartTimerView
        
        //let interactor = StartTimerInteractorController()
        
        let presenter = StartTimerPresenterController()
        
        presenter.router = router
        presenter.view = view
        
        view?.presenter = presenter
        
        router.entryPoint = view
        
        return router
    }
    
    func routeToTimerVC(presentingVC: StartTimerView) {
        
        let view = UIStoryboard(name: TimerViewController.storyboardName, bundle: nil).instantiateViewController(identifier: TimerViewController.className) as! TimerViewController//()//.getView()
        
        let interactor = TimerInteractorController()
        
        var presenter = TimerPresenterController()
    
        var router = TimerWire()
        
        view.presenter = presenter
        
        interactor.presenter = presenter
        
       let presentingViewController = presentingVC as! UIViewController
        presenter.view = view//TimerViewController.getViewController() as! TimerViewController
        presenter.router = router
        router.presenter = presenter
        
        presentingViewController.present(view, animated: true, completion: nil)
        presenter.interactor = interactor
       
        
    }
    
}
