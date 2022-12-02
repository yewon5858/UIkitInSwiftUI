//
//  UITableTableViewController.swift
//  UIKitInSwiftUI
//
//  Created by 김예원 on 2022/11/26.
//

import UIKit
import SwiftUI

//클래스 이름을 바꿀 때는 Refacter를 쓰자..?
class MyTableViewController: UITableViewController {
    @IBOutlet var MyTableView: UITableView!
    var songs: [String] = []
    var playCount: [Int] = []
    var singer: String = ""
    var imageName: String = ""
    @ObservedObject var songDataModel: SongData = SongData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    //뷰가 노출될 때 마다 리스트의 데이터를 다시 불러움
    override func viewWillAppear(_ animated: Bool) {
        MyTableView.reloadData()
    }
    
    // 섹션의 갯수를 지정한다.(구역지정)
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //노래들이 몇 개인지 확인한다.
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songDataModel.singer.count
    }
    
    // 셀을 그려준다
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Mycell", for: indexPath)
        //    songs = songDataModel.songs[(indexPath as NSIndexPath).row] // 노래들 ["안티프레즐",...," 굿파트"]
        //  playCount = songDataModel.playCounts[(indexPath as NSIndexPath).row]// 노래를 실행한횟수[10,...,2]
        
        singer = songDataModel.singer[(indexPath as NSIndexPath).row] //르세라핌 싱어를 기준으로
        if singer == "르세라핌" {
            imageName = "lesserafim"
        }else {
            imageName = "blackpink"
        }
        cell.contentConfiguration = UIHostingConfiguration{
            SwiftUICell(singer: singer, imageName: imageName)
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let singer = songDataModel.singer[(indexPath as NSIndexPath).row]
        songDataModel.currentSinger = singer
        navigationController?.pushViewController(UIHostingController(rootView: SwiftUIView(singerName: songDataModel.currentSinger)), animated: true)
    }
    
    // Override to support editing the table view.
    //목록 삭제 함수
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            // Delete the row from the data source
            
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
    
    
    //"Delete" 대신 "삭제"로 표시
    override func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "삭제"
    }
    
    
}

// didSelectRowAt
// performSegue(withIdentifier: "ShowPerson", sender: self)
/*
 // Override to support conditional editing of the table view.
 override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
 // Return false if you do not want the specified item to be editable.
 return true
 }
 */




/*
 // Override to support editing the table view.
 override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
 if editingStyle == .delete {
 // Delete the row from the data source
 tableView.deleteRows(at: [indexPath], with: .fade)
 } else if editingStyle == .insert {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
 
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
 // Return false if you do not want the item to be re-orderable.
 return true
 }
 */


// MARK: - Navigation


//  In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "Detail"{
//            let cell = sender as! UITableViewCell
//                       let indexPath = self.MyTableView.indexPath(for: cell)
//                       let detailView = segue.destination as! DetailViewController
////                       detailView.receiveItem(songs[((indexPath! as NSIndexPath).row)])
//        }
//    }
//




