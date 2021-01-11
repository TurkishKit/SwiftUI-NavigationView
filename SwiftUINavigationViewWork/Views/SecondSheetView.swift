//
//  SecondSheetView.swift
//  SwiftUINavigationViewWork
//
//  Created by Can Balkaya on 1/8/21.
//

import SwiftUI

struct SecondSheetView: View {

    // MARK: - Properties
    @State var musicName: String = ""
    @Binding var showSheet: Bool

    // MARK: - UI Elements
    var body: some View {
        NavigationView {
            Form {
                Section(
                    header: Text("Yeni Müzik")
                ) {
                    VStack {
                        Image(systemName: "music.quarternote.3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30, alignment: .center)
                            .padding()

                        HStack {
                            Text("Ad: \(musicName)")
                            Spacer()
                        }

                        TextField("Müzik Adı", text: $musicName)
                    }
                }
            }
            .navigationBarTitle("Müzik Ekle")
            .navigationBarItems(
                leading: Button(action: {
                    showSheet = false
                }) {
                    Text("Vazgeç")
                }
            )
        }
    }
}

struct AddExpenseView_Previews: PreviewProvider {
    static var previews: some View {
        SecondSheetView(showSheet: .constant(false))
    }
}
