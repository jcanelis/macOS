//
//  SwitchView.swift
//  ReturnOfTheMac
//
//  Created by John Canelis on 5/6/21.
//

import SwiftUI

struct SwitchView: View {
    var body: some View {
        TabView {
            
            Text("First View")
                .font(.title)
                .tabItem({
                    Image(systemName: "circle")
                    Text("First")
                })
                .tag(0)
            
            Text("Second View")
                .font(.title)
                .tabItem({
                    Image(systemName: "circle")
                    Text("Second")
                })
                .tag(1)
        }
    }
}

struct SwitchView_Previews: PreviewProvider {
    static var previews: some View {
        SwitchView()
    }
}
