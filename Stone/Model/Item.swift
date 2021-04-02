//
//  Item.swift
//  Stone
//
//  Created by Raphael Cerqueira on 02/04/21.
//

import Foundation

struct Item: Identifiable {
    let id = UUID().uuidString
    var image: String
    var title: String
    var isNew: Bool = false
}

let items = [
    Item(image: "creditcard", title: "Cartão"),
    Item(image: "arrow.right.arrow.left", title: "Transferências"),
    Item(image: "barcode.viewfinder", title: "Pagar"),
    Item(image: "dollarsign.circle", title: "Link de Pagamento", isNew: true),
    Item(image: "newspaper", title: "Extrato"),
    Item(image: "doc.text", title: "Agendamentos")
]
