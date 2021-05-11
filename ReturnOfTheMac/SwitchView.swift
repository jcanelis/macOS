//
//  SwitchView.swift
//  ReturnOfTheMac
//
//  Created by John Canelis on 5/6/21.
//

import SwiftUI

struct SwitchView: View {
    
    var url:URL!
    
    var body: some View {
        
        ScrollView {
            URLImage(url: url!)
        }
        .tabItem({
            Image(systemName: "play.rectangle")
            Text("Images")
        })
        .tag(0)
    }
}

struct SwitchView_Previews: PreviewProvider {
    static var previews: some View {
        SwitchView()
    }
}
