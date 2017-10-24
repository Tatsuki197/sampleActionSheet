//
//  ViewController.swift
//  sampleActionSheet
//
//  Created by Tatsuki Nakatsuka on 2017/10/24.
//  Copyright © 2017年 Tatsuki Nakatsuka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
//Selectボタンが押されて時発動
    @IBAction func tapSelect(_ sender: UIButton) {
    
    //アクションシート作成
       let actionSheet = UIAlertController(
        title: "デートに誘う子",
        message: "以下から選択できます",
        preferredStyle: .actionSheet)
        
    //アクティビティボタン１を追加
     //  actionSheet.addAction(UIAlertAction(
    //    title: "メイちゃん",
     //   style: .default,
      //  handler:{action in self.myLabel.text = "メイちゃんとディナー！"}))
        
        actionSheet.addAction(UIAlertAction(
            title: "コバちゃん",
            style: .default,
            handler:{action in self.Activity(name: "オクタゴンへ行くため")}))
        
     //アクティビティボタン２を追加
        actionSheet.addAction(UIAlertAction(
            title: "ユカちゃん",
            style: .default,
            handler:{action in self.Activity(name: "おかゆの水分量を間違えたため")}))
     //削除ボタンを追加
        actionSheet.addAction(UIAlertAction(
            title: "せばちゃん",
            style: .destructive,
            handler:{action in self.Destructive(name: "なんとなく")}))
        
    //キャンセルボタンを追加
        actionSheet.addAction(UIAlertAction(
            title: "ママとお買い物？",
            style: .cancel,
            handler: {action in self.Cancel(name: "はい！行きます。")}))
    //アクションシートを表示
        present(actionSheet,animated: true,completion: nil)
        
    }
    
    //アクティビティボタンが押されたら起動する自作関数。（自分で作る自作関数）
    //Activity 関数名
    //name 引数（ひきすう）呼び出されたところで処理をするための情報をもらう時に使用する。
    //name:String 引数nameはString型と型指定している
   
    func Activity(name:String){
        myLabel.text = "\(name)断られました。"
        
    }
    func Destructive(name:String){
        myLabel.text = "\(name)断られました。"
        
    }
    
    func Cancel(name:String){
        myLabel.text = "\(name)やっぱりママが好きー"
        
    }
    
    //TODO:Activity関数を使ってバスケの処理を実行できるようにしてください
    
    //TODO:Destructive関数を作ってムエタイが押されたときに呼び出してください(引数不要)
    
    //Cansel関数を作って、今日はやめておくが押された時呼び出してください
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

