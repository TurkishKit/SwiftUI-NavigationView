//
//  SheetNavigator.swift
//  SwiftUINavigationViewWork
//
//  Created by Sinan Ulusan on 7.01.2021.
//

import SwiftUI

class SheetNavigator: ObservableObject {
    
    // MARK: - Enumaretions
    enum SheetDestination {
        case firstView
        case secondView
    }
    
    // MARK: - Properties
    static let shared = SheetNavigator()
    @Published var firstViewIsPresented = false
    @Published var secondViewIsPresented = false
    var sheetDestination: SheetDestination = .secondView
}
