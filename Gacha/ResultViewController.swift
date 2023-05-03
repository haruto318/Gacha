//
//  ResultViewController.swift
//  Gacha
//
//  Created by Haruto Hamano on 2023/05/02.
//

import UIKit

class ResultViewController: UIViewController {
    
    var number: Int!
    
    @IBOutlet var akumanomiLabel: UILabel!
    @IBOutlet var characterImageView: UIImageView!


    override func viewDidLoad() {
        super.viewDidLoad()

        number = Int.random(in: 0...5)
        if number == 0 {
            characterImageView.image = UIImage(named: "utauta")
            akumanomiLabel.text = "ウタウタの実"
        } else if number == 1 {
            characterImageView.image = UIImage(named: "opeope")
            akumanomiLabel.text = "オペオペの実"
        } else if number == 2{
            characterImageView.image = UIImage(named: "subesube")
            akumanomiLabel.text = "スベスベの実"
        } else if number == 3{
            characterImageView.image = UIImage(named: "gomugomu")
            akumanomiLabel.text = "ゴムゴムの実"
        } else if number == 4{
            characterImageView.image = UIImage(named: "meramera")
            akumanomiLabel.text = "メラメラの実"
        } else if number == 5{
            characterImageView.image = UIImage(named: "awaawa")
            akumanomiLabel.text = "アワアワの実"
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.characterImageView.center = self.view.center
        UIView.animate(withDuration: 1.0, delay: 0, options: [.curveEaseIn, .autoreverse, .repeat], animations:{
            self.characterImageView.center.y += 10.0
        }){ _ in
            self.characterImageView.center.y -= 10.0
        }
    }
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
