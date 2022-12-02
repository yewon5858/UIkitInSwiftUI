//
//  ChartView.swift
//  UIKitInSwiftUI
//
//  Created by 김예원 on 2022/11/27.
//

import SwiftUI
import Charts

struct ChartView: View {
    var songs: [String]
    var playNum: [Int]
    
    var body: some View {
        ScrollView{
            Chart {
                ForEach(songs.indices,id: \.self){ index in
                    BarMark(
                        x:.value("play", songs[index]),
                        y:.value("song", playNum[index])
                    )
                    .foregroundStyle(by: .value("song", songs[index]))
                    .annotation{Text("\(playNum[index])")
                        
                    }
                }
            }.padding()
            .frame(height: 700)
        }
    }
}

/* Chart {
 ForEach(weekdays.indices, id: \.self) { index in
 BarMark(
 x: .value("Step", steps[index]),
 y: .value("Day", weekdays[index])
 ).foregroundStyle(by: .value("Day", weekdays[index]))
 .annotation{Text("\(steps[index])")}
 }
 }*/





//
//struct ChartView_Previews: PreviewProvider {
//    var songs: [String] = ["ANTIFRAGILE","Impurities"," No Celestial","Sour Grapes","Good Parts","Blue Flame"]
//    var playNum: [String] = ["21","30","10","10","10","50"]
//
//    static var previews: some View {
//        ChartView(songs: songs,playNum: playNum)
//    }
//}
