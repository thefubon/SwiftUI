//
//  ItemModel.swift
//  Onboard
//
//  Created by iMac on 08.03.2023.
//

import SwiftUI

struct Item: Identifiable {
    let id = UUID().uuidString
    let backgroundColor: Color
    let image: String
    let title: String
    let subtitle: String
}

let data = [
    
    Item(
        backgroundColor: Color(.systemIndigo),
        image: "Square",
        title: "Что такое Lorem Ipsum?",
        subtitle: "Lorem Ipsum - это текст-'рыба', часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной 'рыбой' для текстов на латинице с начала XVI века."),
    
    Item(
        backgroundColor: Color(.systemBlue),
        image: "Square",
        title: "Откуда он появился?",
        subtitle: "Многие думают, что Lorem Ipsum - взятый с потолка псевдо-латинский набор слов, но это не совсем так. Его корни уходят в один фрагмент классической латыни 45 года н.э."),
    
    Item(
        backgroundColor: Color(.systemPink),
        image: "Square",
        title: "Почему он используется?",
        subtitle: "Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться."),
    
    Item(
        backgroundColor: Color(.systemMint),
        image: "Square",
        title: "Где его взять?",
        subtitle: "Есть много вариантов Lorem Ipsum, но большинство из них имеет не всегда приемлемые модификации, например, юмористические вставки или слова, которые даже отдалённо не напоминают латынь."),
    
]
