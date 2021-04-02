//
//  LinkView.swift
//  Stone
//
//  Created by Raphael Cerqueira on 02/04/21.
//

import SwiftUI

struct LinkView: View {
    @Binding var show: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            VStack {
                HStack {
                    Spacer()
                    
                    Button(action: {
                        show.toggle()
                    }, label: {
                        Image(systemName: "xmark")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.gray)
                    })
                }
                .padding()
                
                HStack {
                    Text("Link de pagamento")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    
                    Spacer(minLength: 8)
                    
                    Button(action: {}, label: {
                        Image(systemName: "i.circle")
                            .resizable()
                            .frame(width: 23, height: 23)
                            .foregroundColor(.gray)
                    })
                }
                .padding()
            }
            .background(Color.white)
            
            Spacer(minLength: 15)
            
            VStack {
                Image("empty")
                
                Text("Você ainda não criou nenhum link.")
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                
                Text("Crie e envie seus primeiros links de pagamento para vender ainda mais.")
                    .padding(.top)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal, 30)
            
            Spacer(minLength: 15)
            
            Divider()
            
            VStack {
                Button(action: {}, label: {
                    Text("Criar link de pagamento")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 60)
                        .background(Color("green"))
                        .cornerRadius(8)
                })
                .padding()
            }
            .background(Color.white.edgesIgnoringSafeArea(.bottom))
        }
        .background(Color("background"))
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView(show: .constant(true))
    }
}
