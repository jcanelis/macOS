//
//  ContentView.swift
//  ReturnOfTheMac
//
//  Created by John Canelis on 5/6/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var fullText: String = "This is some editable text..."
    
    var body: some View {
        NavigationView {
            ListView()
            Middle()
        }
    }
}

struct Middle: View {
    var body: some View {
        Text("Select a product...")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
