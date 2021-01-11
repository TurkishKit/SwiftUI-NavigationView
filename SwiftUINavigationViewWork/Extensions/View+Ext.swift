//
//  View+Ext.swift
//  SwiftUINavigationViewWork
//
//  Created by Can Balkaya on 1/10/21.
//

import SwiftUI

extension View {
    
    // MARK: - Functions
    func presentation(isModal: Binding<Bool>, onDismissalAttempt: (()->())? = nil) -> some View {
        ModalView(view: self, isModal: isModal, onDismissalAttempt: onDismissalAttempt)
    }
}
