//
//  ContentViewModel.swift
//  ModelingSwiftUI
//
//  Created by Mikael Weiss on 8/1/24.
//

import Foundation

@MainActor
@Observable
class ContentViewModel {
    var inputText = ""
    var count = 0
    var toggleOn = false
    var showSheet = false
    
    func didTapToggle() {
        toggleOn.toggle()
    }
    
    func didTapIncreaseCount() {
        count += 1
    }
    
    func didTapDecreaseCount() {
        count -= 1
    }
    
    func fetchData() {
        // Calls here
    }
    
    func didTapShowSheet() {
        showSheet = true
    }
}
