//
//  SecondViewController.swift
//  PracticeUIKit
//
//  Created by Appnap Mahfuj on 14/3/24.
//

import UIKit

class SecondViewController: UIViewController {

    lazy var titleView: UIButton = {
        let lable = UIButton()
        lable.setTitle("2nd Controller", for: .normal)
        lable.addTarget(self, action: #selector(tapped), for: .touchDown)
        lable.setTitleColor(.black, for: .normal)
        return lable
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
//        titleView.frame = CGRect(x: 200, y: 200, width: 150, height: 50)
        view.addSubview(titleView)
        titleView.centerX(inView: view)
        titleView.centerY(inView: view)

        // Do any additional setup after loading the view.
    }
    
    @objc func tapped(){
        let vc = ThirdViewController()
        navigationController?.pushViewController(vc, animated: true)
        
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
