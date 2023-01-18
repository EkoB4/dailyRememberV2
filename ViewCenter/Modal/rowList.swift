//
//  rowList.swift
//  dailyWordRemember
//
//  Created by VB on 4.09.2022.
//

import Foundation
import SwiftUI

struct rowList : View{
    let value : arbiterModal
    var body: some View{
        HStack{
            Image(systemName: value.isFinished ? "clock" : "clock.badge.checkmark.fill")
                .foregroundColor(value.isFinished ? .gray : .black)
            Text(value.wordVal)
            Spacer()
        }
    }
}

struct listPreviews : PreviewProvider {
    
    static var firstItem = arbiterModal(wordVal: "first Item", isFinished: true)
    static var secondItem = arbiterModal(wordVal: "second Item", isFinished: false)
    static var previews: some View{
        Group{
            rowList(value: firstItem)
            rowList(value: secondItem)
        }.previewLayout(.sizeThatFits)
    }
}
