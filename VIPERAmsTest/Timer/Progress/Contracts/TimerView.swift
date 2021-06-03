//
//  TimerView.swift
//  VIPERAmsTest
//
//  Created by LPTP-DEV-AMEHDI on 19/05/2021.
//

import Foundation

protocol TimerView: AnyObject {
    
//    var presenter: TimerPresenter? { get set }
    
    func updateData(number: Int)
    
    func setColorGreen()
    
    func setColorRed()
    
    func dismissView()
}
