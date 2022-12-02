//
//  SongDataModel.swift
//  UIKitInSwiftUI
//
//  Created by 김예원 on 2022/11/27.
//

import Foundation

class SongData: ObservableObject {
    
    @Published var songs: [[String]] = [["ANTIFRAGILE","Impurities"," No Celestial","Sour Grapes","Good Parts","Blue Flame"],["iceCream","ShutDown","Pink Venom","Crazy Over You"]]
    @Published var playCounts: [[Int]] = [[21,30,10,10,10,50],[15,20,3,37]]
    @Published var singer: [String] = ["르세라핌","블랙핑크"]
    @Published var currentSinger:String = ""
    
}

