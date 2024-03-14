//
//  FirstViewController.swift
//  PracticeUIKit
//
//  Created by Appnap Mahfuj on 14/3/24.
//

import UIKit

class FirstViewController: UIViewController {

    lazy var titleView: UIButton = {
        let lable = UIButton()
        lable.setTitle("1st Controller", for: .normal)
        lable.addTarget(self, action: #selector(tapped), for: .touchDown)
        lable.setTitleColor(.black, for: .normal)
        return lable
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
//        titleView.frame = CGRect(x: 200, y: 200, width: 150, height: 50)
        view.addSubview(titleView)
        titleView.centerX(inView: view)
        titleView.centerY(inView: view)

        // Do any additional setup after loading the view.
    }
    
    @objc func tapped(){
        let vc = SecondViewController()
        let nav = UINavigationController(rootViewController: vc)
        nav.navigationBar.isHidden = true
        nav.modalPresentationStyle = .fullScreen
        present(nav, animated: true)
//        navigationController?.pushViewController(vc, animated: true)
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
