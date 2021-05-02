//
//  hotTravelTableViewController.swift
//  TravelTaiwan
//
//  Created by 翁燮羽 on 2021/4/27.
//

import UIKit


class hotTravelTableViewController: UITableViewController {
    
    var areas = [
        Area(areaName: counties[0], areaImage: counties[0], areaUrl: "https://www.taiwan.net.tw/m1.aspx?sNo=0001105"),
        Area(areaName: counties[1], areaImage: counties[1], areaUrl: "https://www.taiwan.net.tw/m1.aspx?sNo=0001090"),
        Area(areaName: counties[2], areaImage: counties[2], areaUrl: "https://www.taiwan.net.tw/m1.aspx?sNo=0001091"),
        Area(areaName: counties[3], areaImage: counties[3], areaUrl: "https://www.taiwan.net.tw/m1.aspx?sNo=0001107"),
        Area(areaName: counties[4], areaImage: counties[4], areaUrl: "https://www.taiwan.net.tw/m1.aspx?sNo=0001108"),
        Area(areaName: counties[5], areaImage: counties[5], areaUrl: "https://www.taiwan.net.tw/m1.aspx?sNo=0001109"),
        Area(areaName: counties[6], areaImage: counties[6], areaUrl: "https://www.taiwan.net.tw/m1.aspx?sNo=0001110"),
        Area(areaName: counties[7], areaImage: counties[7], areaUrl: "https://www.taiwan.net.tw/m1.aspx?sNo=0001112"),
        Area(areaName: counties[8], areaImage: counties[8], areaUrl: "https://www.taiwan.net.tw/m1.aspx?sNo=0001113"),
        Area(areaName: counties[9], areaImage: counties[9], areaUrl: "https://www.taiwan.net.tw/m1.aspx?sNo=0001114"),
        Area(areaName: counties[10], areaImage: counties[10], areaUrl: "https://www.taiwan.net.tw/m1.aspx?sNo=0001115"),
        Area(areaName: counties[11], areaImage: counties[11], areaUrl: "https://www.taiwan.net.tw/m1.aspx?sNo=0001116"),
        Area(areaName: counties[12], areaImage: counties[12], areaUrl: "https://www.taiwan.net.tw/m1.aspx?sNo=0001117"),
        Area(areaName: counties[13], areaImage: counties[13], areaUrl: "https://www.taiwan.net.tw/m1.aspx?sNo=0001119"),
        Area(areaName: counties[14], areaImage: counties[14], areaUrl: "https://www.taiwan.net.tw/m1.aspx?sNo=0001121"),
        Area(areaName: counties[15], areaImage: counties[15], areaUrl: "https://www.taiwan.net.tw/m1.aspx?sNo=0001122"),
        Area(areaName: counties[16], areaImage: counties[16], areaUrl: "https://www.taiwan.net.tw/m1.aspx?sNo=0001106"),
        Area(areaName: counties[17], areaImage: counties[17], areaUrl: "https://www.taiwan.net.tw/m1.aspx?sNo=0001124"),
        Area(areaName: counties[18], areaImage: counties[18], areaUrl: "https://www.taiwan.net.tw/m1.aspx?sNo=0001123"),
        Area(areaName: counties[19], areaImage: counties[19], areaUrl: "https://www.taiwan.net.tw/m1.aspx?sNo=0001125"),
        Area(areaName: counties[20], areaImage: counties[20], areaUrl: "https://www.taiwan.net.tw/m1.aspx?sNo=0001126"),
        Area(areaName: counties[21], areaImage: counties[21], areaUrl: "https://www.taiwan.net.tw/m1.aspx?sNo=0001127")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
 
    //傳資料到下一頁
    @IBSegueAction func sowWeb(_ coder: NSCoder) -> WebViewController? {
        
        if let row = tableView.indexPathForSelectedRow?.row{
            let aresRow = areas[row]
            return WebViewController(coder: coder,webData: WebData(url: aresRow.areaUrl) )
        }
        return nil
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return areas.count
    }

    //cell的內容顯示
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "show", for: indexPath) as? AreaTableViewCell else { return UITableViewCell()}
        let areasCell = areas[indexPath.row]
        cell.areaCellImage.image = UIImage(named: areasCell.areaImage)
        cell.areaCellLableTex.text = areasCell.areaName
        // Configure the cell...
        
        return cell
    }
    

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
