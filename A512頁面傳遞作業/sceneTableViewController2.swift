//
//  sceneTableViewController2.swift
//  A512頁面傳遞作業
//
//  Created by 范博勝 on 2018/5/4.
//  Copyright © 2018年 范博勝. All rights reserved.
//

import UIKit

class sceneTableViewController2: UITableViewController {

    var scene: Scene?
    
    @IBOutlet weak var imageview: UIImageView!
    
    @IBOutlet weak var viewname: UILabel!
    
    @IBOutlet weak var viewdes: UILabel!
    
    
    @IBOutlet weak var likeyes: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //有讀取到上一頁傳過來的scene的話
        if let scene = scene{
            
            imageview.image = UIImage(named: scene.imageName)
            viewname.text = scene.name
            viewdes.text = scene.description
            likeyes.isOn = scene.like
            
        }
       
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        scene?.like = likeyes.isOn
        //上一頁的回傳函數裡將會收到修改後的scene
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    /*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
*/
 
 
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
