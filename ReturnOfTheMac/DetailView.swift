//
//  DetailView.swift
//  ReturnOfTheMac
//
//  Created by John Canelis on 5/10/21.
//

import SwiftUI
import Contentful

struct DetailView: View {
    
    var item: Product!
    
    @State var showingModal: Bool = false
    
    init(item: Product) {
        self.item = item
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                URLImage(url: item.mainPhoto!.url!, placeholder: "photo")
                
                Button("wowza") {
                    showingModal.toggle()
                }
                
                Text("\(item.price!)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.all, 24.0)
                
                Text("\(item.id)")
                    .font(.subheadline)
                    .padding(.all, 24.0)
                
                Text(item.description!)
                    .font(.body)
                    .padding(.all, 24.0)
                
            }
            
            SwitchView(url: item.mainPhoto!.url!)
        }
        .padding(.all, 24.0)
        .sheet(isPresented: $showingModal) {
            VStack {
                URLImage(url: item.mainPhoto!.url!, placeholder: "photo")
                Button("Add to Cart") {
                    showingModal.toggle()
                }
            }
            .frame(width: 400.0, height: 400.0)
        }
        .toolbar {
            ToolbarItem(placement: .automatic) {
                Button("Add to Cart") {
                    print("Clicked cart button")
                }
            }
        }
    }
}
