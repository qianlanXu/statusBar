//
//  ViewController.swift
//  status
//
//  Created by 徐倩岚 on 2021/12/28.
//

import UIKit

class ViewController: UIViewController {
    private lazy var btn: UIButton = {
        let btn = UIButton()
        btn.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        btn.addTarget(self, action: #selector(btnAction), for: .touchUpInside)
        btn.backgroundColor = UIColor.yellow
        return btn
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.green
        view.addSubview(btn)
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //self.setNeedsStatusBarAppearanceUpdate()
    }
    @objc func btnAction() {
        let targetVC = OneViewController()
        navigationController?.pushViewController(targetVC, animated: true)
    }
}

