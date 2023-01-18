//
//  ViewModal.swift
//  dailyWordRemember
//
//  Created by VB on 31.08.2022.
//

import Foundation


struct arbiterModal : Identifiable{
    var id : UUID = UUID()
    var wordVal : String
    var isFinished : Bool
    init(wordVal : String, isFinished : Bool){
        self.wordVal = wordVal
        self.isFinished = isFinished
    }
}

extension arbiterModal {
    static var MustafaKemalAtaturk = [
        arbiterModal(wordVal:" Ne mutlu 'Türküm' diyene.", isFinished: true),
        arbiterModal(wordVal:"  Benim naçiz vücudum elbet bir gün toprak olacaktır, ancak Türkiye Cumhuriyeti ilelebet payidar kalacaktır.", isFinished: true),
        arbiterModal(wordVal:"  Bu millete çok şey öğretebildim ama onlara uşak olmayı bir türlü öğretemedim.", isFinished: true),
        arbiterModal(wordVal:" Yurtta sulh, cihanda sulh.", isFinished: true)
        
    ]
    static var FatihTerim = [arbiterModal(wordVal: "Ben bu saatten sonra ders almam, ders veririm.", isFinished: true),
    arbiterModal(wordVal: "Hiçbir başarıyı kabul etmeyin dünü de yarına mahkum etmeyin.", isFinished: true),
    arbiterModal(wordVal: "Herkesin adaleti şaşar ama Allah'ın asla.", isFinished: true),
    arbiterModal(wordVal: "Aslolan Galatasaray'dır!", isFinished: true)]
}


/*
 Ne mutlu "Türküm" diyene.
 Benim naçiz vücudum elbet bir gün toprak olacaktır, ancak Türkiye Cumhuriyeti ilelebet payidar kalacaktır.
 Bu millete çok şey öğretebildim ama onlara uşak olmayı bir türlü öğretemedim.
 Yurtta sulh, cihanda sulh.
 Sizlere saldırmanızı değil, ölmenizi emrediyorum.*/
