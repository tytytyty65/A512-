//
//  sceneTableViewController.swift
//  A512頁面傳遞作業
//
//  Created by 范博勝 on 2018/5/3.
//  Copyright © 2018年 范博勝. All rights reserved.
//

import UIKit

class sceneTableViewController: UITableViewController {

//拉線記得要用outlet collection
    @IBOutlet var scenenames: [UILabel]!
    
    @IBOutlet var sceneimageviews: [UIImageView]!
    
    var scenes = [Scene]() //宣告scenes陣列，每一格存放的是Scene類別的東東
    
    //返回時修改選擇列的內容
    @IBAction func unwindToScenesPage(segue: UIStoryboardSegue){
        let source = segue.source as? sceneTableViewController2
        
        //來源的scene有東西
        if let scene = source?.scene, let row =
            tableView.indexPathForSelectedRow?.row {
            scenes[row] = scene
         //scene為讀取的下一頁資料
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

 navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
     //bar上的字體為白色
        
        scenes.append(Scene(name: "嵐山", description: "嵐山宛如優雅的女人一般，從內在流露出的氣質讓人回味無窮，天龍寺盛開的櫻花美得令人醉心，極具思古幽情的祇王寺，讓人一而再為那如同被時光遺忘的空間所震懾，實際來一趟才能感受到嵐山的魅力。", like: true, imageName: "嵐山"))
        
        scenes.append(Scene(name: "清水寺週邊坡道", description: "如果只有一天在京都，清水寺周圍肯定是京都必去景點No.1，除了據說很靈驗的清水寺外，週邊寧寧之道、二年坂、三年坂等古風坡道，不僅可以買到可愛和風雜物、好吃伴手禮，這一帶也是源氏物語、枕草子等描寫過的古都風情景點，在和服店租間和服，走在傳統的日式建築、石板路，一整天在此悠閒漫步也不無聊。", like: true, imageName: "清水寺週邊坡道"))
        
        scenes.append(Scene(name: "祇園花見小路", description: "來京都的遊客，幾乎必去的地方之一，便是「祇園」的花見小路，位於京都繁華區的「祇園」，大家都是衝著有舞妓或藝妓舞藝的「花街」而來。這裡也是藝妓回憶錄 的拍攝地點之一。", like: true,imageName: "祇園花見小路"))
        
        scenes.append(Scene(name: "伏見稻荷大社", description: "【伏見稻荷大社】可說是國外首推京都必逛的景點，雖說逛起來真的很不舒服，但是，走到千本鳥居的一瞬間，真的，再多人跟你擠都覺得值得了，全世界實在找不到第二個這麼奇景的豔紅隧道，上千個紅色鳥居排成隧道，一個個連接上稻荷山，這麼不可思議的場景，難怪電影【藝妓回憶錄】、【名偵探柯南電影】會把它列入拍攝場景呢！", like: true,imageName: "伏見稻荷大社"))
        
        scenes.append(Scene(name: "京都車站", description: "來到京都的門戶「京都車站」，這裡是飄兒每次在京都的最後一站，離開京都前先到拉麵小路好好品嘗日本最好吃的拉麵後，再到旁邊的大階段欣賞京都塔絕美夜景，最後到京都車站內最好逛的商店街與購物中心去掃購各種京都伴手禮，結束美好的京都旅程。", like: true,imageName: "京都車站"))
        
        scenes.append(Scene(name: "錦市場", description: "來「錦巿場」逛逛，是認識京都人生活最好的方式，平常京都人三餐吃什麼？來「錦巿場」就能一清二楚，各種京都漬物、熟食、雜貨、小吃都能在這裡找到。", like: true,imageName: "錦市場"))
        
        scenes.append(Scene(name: "二条城", description: "二条城是一個原以為就是看歷史很無聊的地方，沒想到逛了一次就大開眼界的好地方，在這裡有如穿越至德川家康時代一般，所有德川家辦公、生活的房間都仍維持著，走在日本古代將軍家的樓板，還會有怪聲音，原來是為了防止刺客的裝置，而最令人興奮的，莫過於一棟棟美麗的武家建築與庭園景觀，都讓我難以忘懷。", like: true,imageName: "二条城"))
        
        scenes.append(Scene(name: "金閣寺", description: "金閣寺可是京都眾多必去佛寺中，飄兒說什麼都要去的地方，因為啊，這裡可是一休和尚卡通中，將軍大人「足利義滿」的家，小時候總是準時收看一休和尚的飄兒，怎麼會遺忘這個景點呢？而金閣寺的參觀重點 – – – 舍利殿，其建築外觀以金箔裝飾，看起來一整個華麗呀！", like: false,imageName: "金閣寺"))
        
        scenes.append(Scene(name: "比叡山", description: "比叡山自古即被視為鎮護京師的聖山，在山頂上有歷史悠久，也是世界文化遺產、日本佛教天台宗總本山的延曆寺，而在山腳下還有如夢似幻窗框美景的瑠璃光院，叡山電車的八瀨比叡山口駅周邊以及高野川兩岸等等，就有賞不完的楓葉，相當適合安排個一日賞楓行程。", like: true,imageName: "比叡山"))
        
        scenes.append(Scene(name: "四条河原町", description: "京都晚上有什麼比「四条河原町」更好逛的嗎？新京極商店街的藥妝店、先斗町的宵夜美食、木屋町超多時尚酒吧！OPA、0101、高島屋等購物商場都在京都最熱鬧的「四条河原町」。", like: true,imageName: "四条河原町"))
        
        //顯示scene陣列的資料
        for i in 0..<scenes.count {
            scenenames[i].text = scenes[i].name
            sceneimageviews[i].image = UIImage(named: scenes[i].imageName)
            //[i]裡顯示的東西順序為拉線的順序
        }
       
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editTableViewController = segue.destination as?
        sceneTableViewController2  //指定要連到的頁面
        if let row = tableView.indexPathForSelectedRow?.row {
            editTableViewController?.scene = scenes[row]
            //下一頁裡面已經先宣告scene變數放Scene類型
        }
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
