//
//  ViewController.swift
//  codebaseCalcul
//
//  Created by 백시훈 on 6/21/24.
//

import UIKit
import SnapKit
class ViewController: UIViewController {
    private var label = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        configurateUI()
    }
    
    private func configurateUI(){
        label.text = "12345"
        label.textColor = .white
        label.textAlignment = .right
        label.font = UIFont.boldSystemFont(ofSize: 60)
        
        [label].forEach{
            view.addSubview($0)
        }
        label.snp.makeConstraints{
            $0.trailing.leading.equalToSuperview().inset(30)
            $0.top.equalTo(view.snp.top).offset(200)
            $0.height.equalTo(100)
        }
    }


}

