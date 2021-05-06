//
//  ContentView.swift
//  ReturnOfTheMac
//
//  Created by John Canelis on 5/6/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var isShowing = true
    @State private var fullText: String = "This is some editable text..."
    
    var body: some View {
        NavigationView {
            SwitchView()
            GridView()
                .padding()
                .toolbar {
                    ToolbarItem(placement: .automatic) {
                        Button {
                            
                        } label: {
                            Image(systemName: "archivebox")
                        }
                    }
                    
                    ToolbarItem(placement: .automatic) {
                        Spacer()
                    }
                }
            
            VStack {
                Text("Wow")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
