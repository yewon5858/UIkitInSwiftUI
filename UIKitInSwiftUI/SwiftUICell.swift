//
//  SwiftUICell.swift
//  UIKitInSwiftUI
//
//  Created by 김예원 on 2022/11/27.
//

import SwiftUI

struct SwiftUICell: View {
    
    var singer: String
    var imageName: String
    
    var body: some View {
        
        VStack{
            HStack{
                Image("\(imageName)")
                    .resizable()
                    .frame(width: 100,height: 35)
                
                Text("\(singer)")
                    .font(.title3)
                Spacer()
            }
        }
    }
}

//            HStack{
//                Spacer()
//                VStack{
//                    ForEach(songs, id: \.self){ song in
//                        Text("\(song)")
//                    }
//                }
//            }
//            .font(.body)
//            .padding(.trailing,20)
//
//            HStack {
//                Spacer()
//                Text("재생 횟수 : ")
//                    .font(.caption)
//                ForEach(playCount, id: \.self){ song in
//                    Text("\(song)")
//                }.font(.caption)
//
//            }.padding(.trailing,20)





//struct SwiftUICell_Previews: PreviewProvider {
//    var songData = SongData()
//    var songs: [String] = songData.songs[0]
//    var playCount: [String] = songData.plays
//    var singer: String = songData.singer

//    static var previews: some View {
//        SwiftUICell(songs: songs[0], playCount: singer, singer: playCount[0])
//    }
//}
