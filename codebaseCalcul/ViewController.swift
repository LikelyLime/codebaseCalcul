//
//  ViewController.swift
//  codebaseCalcul
//
//  Created by 백시훈 on 6/21/24.
//

import UIKit
import SnapKit
class ViewController: UIViewController {
    private let label = UILabel()
    private let button7 = UIButton()
    private let button8 = UIButton()
    private let button9 = UIButton()
    private let plusButton = UIButton()
    private let stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurateUI()
    }
    
    private func configurateUI(){
        label.text = "12345"
        label.textColor = .white
        label.textAlignment = .right
        label.font = UIFont.boldSystemFont(ofSize: 60)
        
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        stackView.backgroundColor = .black
        
        button7.setTitle("7", for: .normal)
        button8.setTitle("8", for: .normal)
        button9.setTitle("9", for: .normal)
        plusButton.setTitle("+", for: .normal)
        [label, stackView].forEach{
            view.addSubview($0)
        }
        label.snp.makeConstraints{
            $0.trailing.leading.equalToSuperview().inset(30)
            $0.top.equalTo(view.snp.top).offset(200)
            $0.height.equalTo(100)
        }
        [button7, button8, button9, plusButton].forEach{
            $0.setTitleColor(.white, for: .normal)
            $0.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
            $0.layer.cornerRadius = 40
            stackView.addArrangedSubview($0)
            $0.snp.makeConstraints{
                $0.height.equalTo(80)
                $0.width.equalTo(80)
            }
        }
        
        
        stackView.snp.makeConstraints{
            $0.center.equalToSuperview()
            $0.height.equalTo(80)
        }
    }
    

}

