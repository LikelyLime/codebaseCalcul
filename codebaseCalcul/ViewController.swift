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
    private let button4 = UIButton()
    private let button5 = UIButton()
    private let button6 = UIButton()
    private let minusButton = UIButton()
    private let button1 = UIButton()
    private let button2 = UIButton()
    private let button3 = UIButton()
    private let multiplButton = UIButton()
    private let AcButton = UIButton()
    private let button0 = UIButton()
    private let equalButton = UIButton()
    private let dividButton = UIButton()
    
    private var verticalView = UIStackView()
    private var stackView1 = UIStackView()
    private var stackView2 = UIStackView()
    private var stackView3 = UIStackView()
    private var stackView4 = UIStackView()
    override func viewDidLoad() {
        super.viewDidLoad()
        configurateUI()
    }
    
    private func makeHorizontalStackView(_ views: [UIButton]) -> UIStackView{
        var stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        stackView.backgroundColor = .black
        
        
        
        //버튼
        views.forEach{
            $0.setTitleColor(.white, for: .normal)
            $0.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
            $0.layer.cornerRadius = 40
            stackView.addArrangedSubview($0)
            $0.snp.makeConstraints{
                $0.height.equalTo(80)
                $0.width.equalTo(80)
            }
        }
        return stackView
    }
    
    private func configurateUI(){
        label.text = "12345"
        label.textColor = .white
        label.textAlignment = .right
        label.font = UIFont.boldSystemFont(ofSize: 60)
        
        AcButton.setTitle("AC", for: .normal)
        button0.setTitle("0", for: .normal)
        equalButton.setTitle("=", for: .normal)
        dividButton.setTitle("/", for: .normal)
        
        button1.setTitle("1", for: .normal)
        button2.setTitle("2", for: .normal)
        button3.setTitle("3", for: .normal)
        multiplButton.setTitle("*", for: .normal)
        
        button4.setTitle("4", for: .normal)
        button5.setTitle("5", for: .normal)
        button6.setTitle("6", for: .normal)
        minusButton.setTitle("-", for: .normal)
        
        button7.setTitle("7", for: .normal)
        button8.setTitle("8", for: .normal)
        button9.setTitle("9", for: .normal)
        plusButton.setTitle("+", for: .normal)
        
        
        stackView1 = makeHorizontalStackView([button7, button8, button9, plusButton])
        stackView2 = makeHorizontalStackView([button4, button5, button6, minusButton])
        stackView3 = makeHorizontalStackView([button1, button2, button3, multiplButton])
        stackView4 = makeHorizontalStackView([AcButton, button0, equalButton, dividButton])
        
        
        verticalView.axis = .vertical
        verticalView.backgroundColor = .black
        verticalView.spacing = 10
        verticalView.distribution = .fillEqually
        
        [label, verticalView].forEach{
            view.addSubview($0)
        }
        
        label.snp.makeConstraints{
            $0.trailing.leading.equalToSuperview().inset(30)
            $0.top.equalTo(view.snp.top).offset(200)
            $0.height.equalTo(100)
        }
        
        verticalView.snp.makeConstraints{
            $0.width.equalTo(350)
            $0.top.equalTo(label.snp.bottom).offset(60)
            $0.centerX.equalToSuperview()
        }
        
        [stackView1, stackView2, stackView3, stackView4].forEach{
            verticalView.addArrangedSubview($0)
            $0.snp.makeConstraints{
                $0.height.equalTo(80)
            }
        }
    }
    

}

