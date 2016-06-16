//
//  TestTableViewController.swift
//

import UIKit

class TestTableViewController: UITableViewController {
    
    //表示データ
    var dataList = ["昼","夕方", "夜"]

    
    //最初からあるメソッド
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ビューが表示されるときにレコードの選択を解除しない。
        //clearsSelectionOnViewWillAppear = false
    }
    
    
    //データを返すメソッド
    override func tableView(tableView:UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell {
    
        //セルを取得し、画像と文字列を設定して返す。
        let cell = tableView.dequeueReusableCellWithIdentifier("TestCell", forIndexPath:indexPath) as UITableViewCell
        cell.textLabel!.text = dataList[indexPath.row]
        cell.imageView!.image = UIImage(named: "image" + String(indexPath.row) + ".png")
        
        return cell
    }
    

    
    //データの個数を返すメソッド
    override func tableView(tableView:UITableView, numberOfRowsInSection section:Int) -> Int {
        return dataList.count
    }



    //セル選択時の呼び出しメソッド
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

        //セグエを実行する。
        performSegueWithIdentifier("TestSegue", sender: nil)
    }



    //画面遷移実行前の呼び出しメソッド
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        //選択中セルのテキストとイメージを遷移先のビューコントローラーに設定する。
        let controller = (segue.destinationViewController as? ViewController)!
        let cell = tableView.cellForRowAtIndexPath(tableView.indexPathForSelectedRow!) as UITableViewCell!;
        controller.testTitle = cell.textLabel?.text
        controller.testImage = cell.imageView?.image
        
    }
    
}