//
//  ItemView.swift
//  Stone
//
//  Created by Raphael Cerqueira on 02/04/21.
//

import SwiftUI

struct ItemView: View {
    var item: Item
    
    var body: some View {
        HStack {
            Image(systemName: item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 25, height: 25)
                .foregroundColor(Color("green"))
            
            Text(item.title)
                .font(.system(size: 15))
                .foregroundColor(Color.black)
            
            Spacer(minLength: 0)
        }
        .padding()
        .frame(height: 80)
        .background(Color.white)
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(item: items[0])
    }
}
