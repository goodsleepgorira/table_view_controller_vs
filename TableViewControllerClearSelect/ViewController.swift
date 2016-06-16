//
//  ViewController.swift
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testImageView: UIImageView!
    @IBOutlet weak var testNavBar: UINavigationBar!
    
    var testTitle:String!
    var testImage:UIImage!
    
    
    //最初からあるメソッド
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testImageView.image = testImage
        testNavBar.topItem?.title = testTitle
    }
    
    //ボタン押下時の呼び出しメソッド
    @IBAction func pushButton(sender: UIBarButtonItem) {
    
        //モーダル表示されているビューコントローラーを解放する。
        self.dismissViewControllerAnimated(true, completion:nil)
    }

}

