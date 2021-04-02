//
//  ContentView.swift
//  Stone
//
//  Created by Raphael Cerqueira on 31/03/21.
//

import SwiftUI

struct ContentView: View {
    @State var showLinkView = false
    
    var body: some View {
        HomeView(didSelectItemAtIndex: { (index) in
            if index == 3 {
                showLinkView.toggle()
            }
        })
        .sheet(isPresented: $showLinkView, content: {
            LinkView(show: $showLinkView)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
