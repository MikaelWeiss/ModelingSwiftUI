//
//  ContentView.swift
//  ModelingSwiftUI
//
//  Created by Mikael Weiss on 8/1/24.
//

import SwiftUI

@MainActor
struct ContentView: View {
    @State private var model = ContentViewModel()
    
    var body: some View {
        VStack {
            TextField("Sup", text: $model.inputText)
            
            Text("Count: \(model.count)")
            
            Button("Increase Count", action: model.didTapIncreaseCount)
            
            Button("Decrease Count", action: model.didTapDecreaseCount)
            
            Toggle(isOn: $model.toggleOn) {
                Text("Some toggle")
            }
            .contentShape(Rectangle())
            .onTapGesture(perform: model.didTapToggle)
            
            Button("Show sheet", action: model.didTapShowSheet)
        }
        .padding()
        .onAppear(perform: model.fetchData)
        .sheet(isPresented: $model.showSheet) {
            Text("Sup")
        }
    }
    
}

#Preview {
    ContentView()
}
