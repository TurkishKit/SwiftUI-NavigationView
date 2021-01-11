//
//  FirstSheetView.swift
//  SwiftUINavigationViewWork
//
//  Created by Can Balkaya on 1/8/21.
//

import SwiftUI

struct FirstSheetView: View {

    // MARK: - Properties
    @Environment(\.presentationMode) var presentationMode

    // MARK: - UI Elements
    var body: some View {
        NavigationView {
            Form {
                Text("Playlist oluşturabilirsin.")
                Text("Albüm olarak kayıt edebilirsin.")
                Text("Sanatçı olarak kaydedebilirsin.")
            }
            .navigationBarTitle("Nasıl Düzenlerim?", displayMode: .inline)
            .navigationBarItems(
                leading: Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Vazgeç")
                }
            )
        }
    }
}

struct DailyLimitView_Previews: PreviewProvider {
    static var previews: some View {
        FirstSheetView()
    }
}
