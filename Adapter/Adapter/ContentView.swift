//
//  ContentView.swift
//  Adapter
//
//  Created by Praveen Jangre on 12/06/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            testImplementedPattern()
        }
        
        
    }
}

#Preview {
    ContentView()
}
