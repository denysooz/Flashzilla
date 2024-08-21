//
//  ContentView.swift
//  Flashzilla
//
//  Created by Denis Dareuskiy on 20.08.24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentAmount = 0.0
    @State private var finalAmount = 1.0
    
    var body: some View {
        VStack {
            Text("Hello, World!")
                .scaleEffect(finalAmount + currentAmount)
                .gesture (
                    MagnifyGesture()
                        .onChanged { value in
                            currentAmount = value.magnification - 1
                        }
                        .onEnded { value in
                                finalAmount += currentAmount
                            currentAmount = 0
                        }
                )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
