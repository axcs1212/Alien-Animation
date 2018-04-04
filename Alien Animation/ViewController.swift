//
//  ViewController.swift
//  Alien Animation
//
//  Created by D7703_23 on 2018. 4. 4..
//  Copyright © 2018년 D7703_23. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var counter: UILabel!
    var index = 1
    var direction = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 첫번째 이미지 보이기
        myImageView.image = UIImage(named: "frame1.png")
        counter.text = "1"
    }

    @IBAction func update(_ sender: Any) {
        //index가 5일때 direction에 값을 0으로 해준다
        if index == 5{
            direction = 0
        }
            //index가 1이면 direction도 값이 1이된다.
        else if index == 1{
            direction = 1
        }
        //direction이 1이면 인덱스 값을 증가시킨다.
        if direction == 1{
            index += 1
        }
            //direction이 0이면 index 값을 감소시킨다.
        else if direction == 0{
            index = index - 1
        }
        myImageView.image = UIImage(named: "frame\(index).png")
        counter.text = String(index)

    }
}
