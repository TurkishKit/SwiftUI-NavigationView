//
//  ContentView.swift
//  SwiftUINavigationViewWork
//
//  Created by Sinan Ulusan on 7.01.2021.
//

import SwiftUI

struct ContentView: View {
        
    // MARK: - Properties
    @State var showSheet = false
    @State var showModally = false
    @ObservedObject var sheetNavigator = SheetNavigator.shared
    
    // MARK: - UI Elements
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "music.quarternote.3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100, alignment: .center)
                    .padding()
                
                Text("Günün Müziği")
                    .font(.system(size: 25, weight: .light, design: .default))
                    .padding()
                
                NavigationLink(
                    destination: Text("Kid Cudi-Another Day"),
                    label: {
                        Text("Dinlemek için tıkla!")
                            .frame(width: 200, height: 50, alignment: .center)
                            .background(Color.purple)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                )
            }
            .navigationBarTitle("Müzik", displayMode: .large)
            .navigationBarItems(
                leading:
                    Button(action: {
                        sheetNavigator.firstViewIsPresented = true
                        sheetNavigator.secondViewIsPresented = false
                        showSheet = true
                        showModally = true
                    }) {
                       Image(systemName: "gearshape.fill")
                        .font(.system(size: 21))
                    },
                
                trailing:
                    Button(action: {
                        sheetNavigator.firstViewIsPresented = false
                        sheetNavigator.secondViewIsPresented = true
                        showSheet = true
                        showModally = true
                    }) {
                       Image(systemName: "plus.circle.fill")
                        .font(.system(size: 21))
                    }
            )
        }
        .sheet(isPresented: $showSheet, content: {
            if sheetNavigator.firstViewIsPresented {
                FirstSheetView()
            } else {
                SecondSheetView(showSheet: $showSheet)
                    .presentation(isModal: $showModally)
            }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
