//
//  SwiftUIView.swift
//  UIKitInSwiftUI
//
//  Created by 김예원 on 2022/11/27.
//

import SwiftUI

struct SwiftUIView: View {
    
    var singerName: String
    var data: SongData = SongData()
    
    var body: some View {
        VStack {
            //그래프 이름
            Text(String(singerName))
                .font(.largeTitle)
            
            HStack {
                Spacer()
                Text("x: 노래제목, y: 재생횟수")
                    .font(.caption2)
                    .padding(.trailing,20)
            }
            switch singerName {
            case "르세라핌":
                ChartView(songs: data.songs[0],playNum: data.playCounts[0])
            case "블랙핑크":
                ChartView(songs: data.songs[1],playNum: data.playCounts[1])
            default:
                ChartView(songs: data.songs[0],playNum: data.playCounts[0])
            }
        }
    }
}

//                if text == "르세라핌"{
//                  //  Text(data.songs[0].description)
//                    ChartView(songs: data.songs[0],playNum: data.plays[0])
//                } else{
//                    Text(data.songs[1].description)
//                    ChartView(songs: data.songs[1],playNum: data.plays[1])
//            }
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(singerName: " ")
    }
}
