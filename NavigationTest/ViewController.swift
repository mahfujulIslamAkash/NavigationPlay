//
//  ViewController.swift
//  NavigationTest
//
//  Created by Appnap Mahfuj on 14/3/24.
//

import UIKit

class ViewController: UIViewController {

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
//        let detailNC = UINavigationController(rootViewController: vc)
//        navigationController?.present(detailNC, animated: true)
        
//        self.navigationController?.setViewControllers([self], animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

