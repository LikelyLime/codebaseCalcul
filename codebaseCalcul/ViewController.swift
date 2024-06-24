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
    private var button7 = UIButton()
    private var button8 = UIButton()
    private var button9 = UIButton()
    private var plusButton = UIButton()
    private var button4 = UIButton()
    private var button5 = UIButton()
    private var button6 = UIButton()
    private var minusButton = UIButton()
    private var button1 = UIButton()
    private var button2 = UIButton()
    private var button3 = UIButton()
    private var multiplButton = UIButton()
    private var AcButton = UIButton()
    private var button0 = UIButton()
    private var equalButton = UIButton()
    private var dividButton = UIButton()
    
    private var verticalView = UIStackView()
    private var stackView1 = UIStackView()
    private var stackView2 = UIStackView()
    private var stackView3 = UIStackView()
    private var stackView4 = UIStackView()
    var oper = OperationDTO.self
    var input = inputData()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurateUI()
    }
    
    /**
     stackView 생성
     */
    private func makeHorizontalStackView(_ buttons: [UIButton]) -> UIStackView{
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        stackView.backgroundColor = .black
        //버튼
        buttons.forEach{
            stackView.addArrangedSubview($0)
        }
        return stackView
    }
    /**
     button 생성
     */
    private func makeButton(_ title:String) -> UIButton{
        let btn = UIButton()
        btn.setTitle(title, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.titleLabel?.font = .boldSystemFont(ofSize: 30)
        if isInt(title) {
            btn.addTarget(self, action: #selector(tapNumButton) , for: .touchDown)
            btn.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        }else{
            btn.backgroundColor = .orange
        }
            
        btn.layer.cornerRadius = 40
        btn.snp.makeConstraints{
            $0.height.equalTo(80)
            $0.width.equalTo(80)
        }
        return btn
    }
    
    /**
     버튼를 탭 했을때 label을 변경하는 함수
     */
    @objc
    private func tapNumButton(_ sender: UIButton){
        print(label.text!)
        let tapNum = sender.title(for: .normal) ?? "No title"
        if label.text! == "0"{
            if tapNum == "0"{
                input.displayNum = "0"
            }else{
                input.displayNum = tapNum
            }
        }else{
            input.displayNum += tapNum
        }
        
        label.text = input.displayNum
    }

    
    /**
     색상 수정을위한 버튼 타이틀이 숫자인지 아닌지 확인하는 메서드
     */
    private func isInt(_ string: String) -> Bool {
        return Int(string) != nil
    }
    /**
     UI설정을 위한 메서드
     */
    private func configurateUI(){
        label.text = "0"
        label.textColor = .white
        label.textAlignment = .right
        label.font = UIFont.boldSystemFont(ofSize: 60)
        button7 = makeButton("7")
        button8 = makeButton("8")
        button9 = makeButton("9")
        plusButton = makeButton("+")
        button4 = makeButton("4")
        button5 = makeButton("5")
        button6 = makeButton("6")
        minusButton = makeButton("-")
        button1 = makeButton("1")
        button2 = makeButton("2")
        button3 = makeButton("3")
        multiplButton = makeButton("*")
        AcButton = makeButton("AC")
        button0 = makeButton("0")
        equalButton = makeButton("=")
        dividButton = makeButton("/")
        
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

