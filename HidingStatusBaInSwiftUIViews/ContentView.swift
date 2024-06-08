//
//  ContentView.swift
//  HidingStatusBaInSwiftUIViews
//
//  Created by Ramill Ibragimov on 6/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var hideStatus = false
    
    var body: some View {
        VStack {
            LabeledContent("SwiftUI") {
                Text("Learn iOS")
                    .foregroundStyle(.mint)
            }
            .font(.largeTitle)
            
            Toggle("Hide statusbar", isOn: $hideStatus)
        }
        .padding()
        .statusBar(hidden: hideStatus)
    }
}

#Preview {
    ContentView()
}
