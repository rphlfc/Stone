//
//  HomeView.swift
//  Stone
//
//  Created by Raphael Cerqueira on 02/04/21.
//

import SwiftUI

struct HomeView: View {
    var didSelectItemAtIndex: (Int) -> Void
    
    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 15) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Bolos")
                            .font(.system(size: 21))
                            .fontWeight(.bold)
                        
                        Text("CNPJ: 16.040.122./0001-76")
                            .font(.system(size: 13))
                    }
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        HStack {
                            Text("Trocar")
                                .font(.system(size: 15))
                            
                            Image(systemName: "chevron.right")
                                .font(.system(size: 13))
                        }
                        .padding(.horizontal)
                        .padding(.vertical, 10)
                        .background(RoundedRectangle(cornerRadius: 8).strokeBorder(Color.white, lineWidth: 1))
                    })
                }
                
                Divider()
                    .background(Color.white)
                
                HStack {
                    Text("Stone: 197")
                    
                    Text("Agência: 0001")
                    
                    Text("Conta: 61616749")
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "doc.on.doc")
                    })
                }
                .font(.system(size: 15))
            }
            .padding()
            .foregroundColor(.white)
            .background(Color("green").edgesIgnoringSafeArea(.top))
            
            ScrollView(.vertical, showsIndicators: false) {
                SaldoView()
                    .background(Color.white)
                
                HStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Agendamentos")
                            .foregroundColor(.gray)
                        
                        Text("R$ 12.698,06")
                            .font(.system(size: 21))
                            .foregroundColor(.black)
                        
                        Text("Próximos 12 meses")
                            .font(.system(size: 13))
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Text("Ver detalhes")
                            .fontWeight(.semibold)
                            .foregroundColor(Color("green"))
                    })
                }
                .padding()
                .background(Color.white)
                .padding(.top)
                
                HStack {
                    Rectangle()
                        .frame(width: 2, height: 93)
                        .foregroundColor(Color(#colorLiteral(red: 0.4346367717, green: 0.3482871056, blue: 0.8392158151, alpha: 1)))
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 8) {
                            HStack {
                                Text("Empréstimo")
                                    .foregroundColor(Color.gray)
                                
                                Text("Pré-aprovado")
                                    .font(.system(size: 15))
                                    .fontWeight(.medium)
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 8)
                                    .padding(.vertical, 4)
                                    .background(Capsule().foregroundColor(Color(#colorLiteral(red: 0.4346367717, green: 0.3482871056, blue: 0.8392158151, alpha: 1))))
                            }
                            
                            Text("R$ 50.000,00")
                                .font(.system(size: 21))
                                .foregroundColor(.black)
                        }
                        
                        Spacer()
                        
                        Text("Simular")
                            .fontWeight(.semibold)
                            .foregroundColor(Color(#colorLiteral(red: 0.4346367717, green: 0.3482871056, blue: 0.8392158151, alpha: 1)))
                    }
                    .padding()
                }
                .background(Color.white)
                .padding(.top)
                
                LazyVGrid(columns: Array.init(repeating: GridItem(.adaptive(minimum: 200, maximum: 200)), count: 2), alignment: .center, spacing: 15, content: {
                    ForEach(0..<items.count) { index in
                        Button(action: {
                            didSelectItemAtIndex(index)
                        }, label: {
                            ZStack(alignment: .topTrailing) {
                                ItemView(item: items[index])
                                    .padding(.top, 8)
                                    .padding(.trailing, 8)
                                
                                if items[index].isNew {
                                    Text("novo!")
                                        .font(.system(size: 11))
                                        .padding(.horizontal, 13)
                                        .padding(.vertical, 3)
                                        .foregroundColor(Color.black)
                                        .background(Capsule().foregroundColor(Color(#colorLiteral(red: 0.9512275623, green: 0.8365238146, blue: 0.3420850367, alpha: 1))))
                                }
                            }
                        })
                    }
                })
                .padding(.top)
                .padding(.horizontal)
                
                Spacer(minLength: 0)
                    .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            }
        }
        .background(Color("background").edgesIgnoringSafeArea(.bottom))
    }
}

struct SaldoView: View {
    @AppStorage("isVisible") var visible = true
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Saldo da Conta")
                        .foregroundColor(.gray)
                    
                    Text("R$ 40.780,20")
                        .font(.system(size: 27))
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .redacted(reason: visible ? .init() : .placeholder)
                }
                
                Spacer()
                
                Button(action: {
                    visible.toggle()
                }, label: {
                    HStack {
                        Text(visible ? "Ocultar" : "Mostrar")
                        
                        Image(systemName: visible ? "eye.slash" : "eye")
                    }
                    .foregroundColor(.gray)
                })
            }
            .padding(.horizontal, 20)
            .padding(.vertical)
            
            Divider()
            
            Button(action: {}, label: {
                HStack {
                    Text("Ver todos os saldos")
                        .fontWeight(.medium)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                }
                .foregroundColor(Color("green"))
                .padding(.horizontal, 20)
                .padding(.vertical)
            })
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView { (index) in
            
        }
    }
}
