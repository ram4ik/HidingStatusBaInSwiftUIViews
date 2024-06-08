//
//  ContentView.swift
//  HidingStatusBaInSwiftUIViews
//
//  Created by Ramill Ibragimov on 6/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var hideStatus = false
    @State private var showModel = false
    
    var body: some View {
        NavigationStack {
            NavigationLink {
                Text("This is the destination")
            } label: {
                VStack {
                    LabeledContent("SwiftUI") {
                        Text("Learn iOS")
                            .foregroundStyle(.mint)
                    }
                    .font(.largeTitle)
                    
                    Toggle("Hide statusbar", isOn: $hideStatus)
                }
                .padding()
            }
        }
        .statusBar(hidden: hideStatus)
    }
}

#Preview {
    ContentView()
}
