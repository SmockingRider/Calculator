//
//  ViewController.swift
//  Calculator
//
//  Created by Seidaly Rustem on 01.01.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
        
    private lazy var buttonEquals: UIButton = {
        let buttonEquals = UIButton(type: .system)
        buttonEquals.backgroundColor = UIColor(red: 255/255, green: 149/255, blue: 3/255, alpha: 1)
        buttonEquals.layer.cornerRadius = 40
        buttonEquals.setTitleColor(.white, for: .normal)
        buttonEquals.setTitle("=", for: .normal)
        buttonEquals.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 42)
        return buttonEquals
    }()
    
    private lazy var buttonPlus: UIButton = {
        let buttonPlus = UIButton(type: .system)
        buttonPlus.backgroundColor = UIColor(red: 255/255, green: 149/255, blue: 3/255, alpha: 1)
        buttonPlus.layer.cornerRadius = 40
        buttonPlus.setTitleColor(.white, for: .normal)
        buttonPlus.setTitle("+", for: .normal)
        buttonPlus.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 42)
        return buttonPlus
    }()
    
    private lazy var buttonMinus: UIButton = {
        let buttonMinus = UIButton(type: .system)
        buttonMinus.backgroundColor = UIColor(red: 255/255, green: 149/255, blue: 3/255, alpha: 1)
        buttonMinus.layer.cornerRadius = 40
        buttonMinus.setTitleColor(.white, for: .normal)
        buttonMinus.setTitle("-", for: .normal)
        buttonMinus.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 42)
        return buttonMinus
    }()
    
    private lazy var buttonMultiply: UIButton = {
        let buttonMultiply = UIButton(type: .system)
        buttonMultiply.backgroundColor = UIColor(red: 255/255, green: 149/255, blue: 3/255, alpha: 1)
        buttonMultiply.layer.cornerRadius = 40
        buttonMultiply.setTitleColor(.white, for: .normal)
        buttonMultiply.setTitle("×", for: .normal)
        buttonMultiply.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 42)
        return buttonMultiply
    }()
    
    private lazy var buttonDivision: UIButton = {
        let buttonDivision = UIButton(type: .system)
        buttonDivision.backgroundColor = UIColor(red: 255/255, green: 149/255, blue: 3/255, alpha: 1)
        buttonDivision.layer.cornerRadius = 40
        buttonDivision.setTitleColor(.white, for: .normal)
        buttonDivision.setTitle("÷", for: .normal)
        buttonDivision.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 42)
        return buttonDivision
    }()
    
    private lazy var buttonDot: UIButton = {
        let buttonDot = UIButton(type: .system)
        buttonDot.backgroundColor = UIColor(red: 80/255, green: 80/255, blue: 80/255, alpha: 1)
        buttonDot.layer.cornerRadius = 40
        buttonDot.setTitleColor(.white, for: .normal)
        buttonDot.setTitle(",", for: .normal)
        buttonDot.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 42)
        return buttonDot
    }()
    
    private lazy var buttonZero: UIButton = {
        let buttonZero = UIButton(type: .system)
        buttonZero.tag = 0
        buttonZero.backgroundColor = UIColor(red: 80/255, green: 80/255, blue: 80/255, alpha: 1)
        buttonZero.layer.cornerRadius = 40
        buttonZero.setTitleColor(.white, for: .normal)
        buttonZero.setTitle("0       ", for: .normal)
        buttonZero.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 42)
        return buttonZero
    }()
    
    private lazy var buttonThree: UIButton = {
        let buttonThree = UIButton(type: .system)
        buttonThree.tag = 3
        buttonThree.backgroundColor = UIColor(red: 80/255, green: 80/255, blue: 80/255, alpha: 1)
        buttonThree.layer.cornerRadius = 40
        buttonThree.setTitleColor(.white, for: .normal)
        buttonThree.setTitle("3", for: .normal)
        buttonThree.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 42)
        buttonThree.addTarget(self, action: #selector(digitPressed), for: .touchUpInside)
        return buttonThree
    }()
    
    private lazy var buttonSix: UIButton = {
        let buttonSix = UIButton(type: .system)
        buttonSix.tag = 6
        buttonSix.backgroundColor = UIColor(red: 80/255, green: 80/255, blue: 80/255, alpha: 1)
        buttonSix.layer.cornerRadius = 40
        buttonSix.setTitleColor(.white, for: .normal)
        buttonSix.setTitle("6", for: .normal)
        buttonSix.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 42)
        buttonSix.addTarget(self, action: #selector(digitPressed), for: .touchUpInside)
        return buttonSix
    }()
    
    private lazy var buttonNine: UIButton = {
        let buttonNine = UIButton(type: .system)
        buttonNine.tag = 9
        buttonNine.backgroundColor = UIColor(red: 80/255, green: 80/255, blue: 80/255, alpha: 1)
        buttonNine.layer.cornerRadius = 40
        buttonNine.setTitleColor(.white, for: .normal)
        buttonNine.setTitle("9", for: .normal)
        buttonNine.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 42)
        buttonNine.addTarget(self, action: #selector(digitPressed), for: .touchUpInside)
        return buttonNine
    }()
    
    private lazy var buttonPercent: UIButton = {
        let buttonPercent = UIButton(type: .system)
        buttonPercent.backgroundColor = UIColor(red: 212/255, green: 212/255, blue: 210/255, alpha: 1)
        buttonPercent.layer.cornerRadius = 40
        buttonPercent.setTitleColor(.black, for: .normal)
        buttonPercent.setTitle("%", for: .normal)
        buttonPercent.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 42)
        return buttonPercent
    }()
    
    private lazy var buttonTwo: UIButton = {
        let buttonTwo = UIButton(type: .system)
        buttonTwo.tag = 2
        buttonTwo.backgroundColor = UIColor(red: 80/255, green: 80/255, blue: 80/255, alpha: 1)
        buttonTwo.layer.cornerRadius = 40
        buttonTwo.setTitleColor(.white, for: .normal)
        buttonTwo.setTitle("2", for: .normal)
        buttonTwo.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 42)
        buttonTwo.addTarget(self, action: #selector(digitPressed), for: .touchUpInside)
        return buttonTwo
    }()
    
    private lazy var buttonFive: UIButton = {
        let buttonFive = UIButton(type: .system)
        buttonFive.tag = 5
        buttonFive.backgroundColor = UIColor(red: 80/255, green: 80/255, blue: 80/255, alpha: 1)
        buttonFive.layer.cornerRadius = 40
        buttonFive.setTitleColor(.white, for: .normal)
        buttonFive.setTitle("5", for: .normal)
        buttonFive.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 42)
        buttonFive.addTarget(self, action: #selector(digitPressed), for: .touchUpInside)
        return buttonFive
    }()
    
    private lazy var buttonEight: UIButton = {
        let buttonEight = UIButton(type: .system)
        buttonEight.tag = 8
        buttonEight.backgroundColor = UIColor(red: 80/255, green: 80/255, blue: 80/255, alpha: 1)
        buttonEight.layer.cornerRadius = 40
        buttonEight.setTitleColor(.white, for: .normal)
        buttonEight.setTitle("8", for: .normal)
        buttonEight.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 42)
        buttonEight.addTarget(self, action: #selector(digitPressed), for: .touchUpInside)
        return buttonEight
    }()
    
    private lazy var buttonPlusMinus: UIButton = {
        let buttonPlusMinus = UIButton(type: .system)
        buttonPlusMinus.backgroundColor = UIColor(red: 212/255, green: 212/255, blue: 210/255, alpha: 1)
        buttonPlusMinus.layer.cornerRadius = 40
        buttonPlusMinus.setTitleColor(.black, for: .normal)
        buttonPlusMinus.setTitle("+/-", for: .normal)
        buttonPlusMinus.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 42)
        return buttonPlusMinus
    }()
    
    private lazy var buttonOne: UIButton = {
        let buttonOne = UIButton(type: .system)
        buttonOne.tag = 1
        buttonOne.backgroundColor = UIColor(red: 80/255, green: 80/255, blue: 80/255, alpha: 1)
        buttonOne.layer.cornerRadius = 40
        buttonOne.setTitleColor(.white, for: .normal)
        buttonOne.setTitle("1", for: .normal)
        buttonOne.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 42)
        buttonOne.addTarget(self, action: #selector(digitPressed), for: .touchUpInside)
        return buttonOne
    }()
    
    private lazy var buttonFour: UIButton = {
        let buttonFour = UIButton(type: .system)
        buttonFour.tag = 4
        buttonFour.backgroundColor = UIColor(red: 80/255, green: 80/255, blue: 80/255, alpha: 1)
        buttonFour.layer.cornerRadius = 40
        buttonFour.setTitleColor(.white, for: .normal)
        buttonFour.setTitle("4", for: .normal)
        buttonFour.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 42)
        buttonFour.addTarget(self, action: #selector(digitPressed), for: .touchUpInside)
        return buttonFour
    }()
    
    private lazy var buttonSeven: UIButton = {
        let buttonSeven = UIButton(type: .system)
        buttonSeven.tag = 7
        buttonSeven.backgroundColor = UIColor(red: 80/255, green: 80/255, blue: 80/255, alpha: 1)
        buttonSeven.layer.cornerRadius = 40
        buttonSeven.setTitleColor(.white, for: .normal)
        buttonSeven.setTitle("7", for: .normal)
        buttonSeven.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 42)
        buttonSeven.addTarget(self, action: #selector(digitPressed), for: .touchUpInside)
        return buttonSeven
    }()
    
    private lazy var buttonClear: UIButton = {
        let buttonClear = UIButton(type: .system)
        buttonClear.backgroundColor = UIColor(red: 212/255, green: 212/255, blue: 210/255, alpha: 1)
        buttonClear.layer.cornerRadius = 40
        buttonClear.setTitleColor(.black, for: .normal)
        buttonClear.setTitle("AC", for: .normal)
        buttonClear.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 42)
        return buttonClear
    }()
    
    @objc func buttonClearTapped() {
        labelResult.text = ""
    }
    
    private lazy var labelResult: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Helvetica",size:90)
        label.text = ""
        label.textColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .right
        return label
    }()
    
    @objc func digitPressed(_ sender: UIButton) {
        let digit = sender.tag
        if labelResult.text!.count < 11 {
            if labelResult.text!.count % 3 == 2 {
                labelResult.text!.insert(" ", at: labelResult.text!.index(labelResult.text!.endIndex, offsetBy: -2))
            }
            labelResult.text = "\(labelResult.text!)\(digit)"
        }
    }
    var firstNumber: Int = 0
    var secondNumber: Int = 0
    var result: Int = 0

    func sum(a: Int, b: Int) -> Int {
        return a + b
    }

    func difference(a: Int, b: Int) -> Int {
        return a - b
    }

    func product(a: Int, b: Int) -> Int {
        return a * b
    }

    func quotient(a: Int, b: Int) -> Int {
        return a / b
    }
    
    @objc func plusButtonTapped() {
    firstNumber = Int(labelResult.text!)!
    labelResult.text = ""
    operation = .plus
    }

    @objc func minusButtonTapped() {
    firstNumber = Int(labelResult.text!)!
    labelResult.text = ""
    operation = .minus
    }

    @objc func multiplyButtonTapped() {
    firstNumber = Int(labelResult.text!)!
    labelResult.text = ""
    operation = .multiply
    }

    @objc func divisionButtonTapped() {
    firstNumber = Int(labelResult.text!)!
    labelResult.text = ""
    operation = .division
    }
    
    @objc func equalsButtonTapped() {
    secondNumber = Int(labelResult.text!)!
    switch operation {
    case .plus:
        result = sum(a: firstNumber, b: secondNumber)
    case .minus:
        result = difference(a: firstNumber, b: secondNumber)
    case .multiply:
        result = product(a: firstNumber, b: secondNumber)
    case .division:
        result = quotient(a: firstNumber, b: secondNumber)
    }

    labelResult.text = String(result)
    }
    
    enum Operation {
    case plus
    case minus
    case multiply
    case division
    }

    var operation: Operation = .plus
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
        buttonClear.addTarget(self, action: #selector(buttonClearTapped), for: .touchUpInside)
        buttonPlus.addTarget(self, action: #selector(plusButtonTapped), for: .touchUpInside)
        buttonMinus.addTarget(self, action: #selector(minusButtonTapped), for: .touchUpInside)
        buttonMultiply.addTarget(self, action: #selector(multiplyButtonTapped), for: .touchUpInside)
        buttonDivision.addTarget(self, action: #selector(divisionButtonTapped), for: .touchUpInside)
        buttonEquals.addTarget(self, action: #selector(equalsButtonTapped), for: .touchUpInside)
        setupViews()
        setupConstraints()
    }
}
//MARK: - Setup and constraints

private extension ViewController {
    
    func setupViews() {
        view.addSubview(buttonEquals)
        view.addSubview(buttonPlus)
        view.addSubview(buttonMinus)
        view.addSubview(buttonMultiply)
        view.addSubview(buttonDivision)
        view.addSubview(buttonDot)
        view.addSubview(buttonZero)
        view.addSubview(buttonThree)
        view.addSubview(buttonSix)
        view.addSubview(buttonNine)
        view.addSubview(buttonPercent)
        view.addSubview(buttonTwo)
        view.addSubview(buttonFive)
        view.addSubview(buttonEight)
        view.addSubview(buttonPlusMinus)
        view.addSubview(buttonOne)
        view.addSubview(buttonFour)
        view.addSubview(buttonSeven)
        view.addSubview(buttonClear)
        view.addSubview(labelResult)
    }
    
    func setupConstraints() {
        labelResult.snp.makeConstraints{make in
            make.width.equalTo(view.snp.width).multipliedBy(0.9)
            make.centerX.equalTo(view.snp.centerX)
            make.bottom.equalTo(buttonDivision.snp.top).inset(-15)
        }
        
        buttonClear.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalToSuperview().offset(20)
            make.bottom.equalTo(buttonSeven.snp.top).inset(-15)
        }
        
        buttonPlusMinus.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalTo(buttonClear.snp.right).offset(10)
            make.bottom.equalTo(buttonEight.snp.top).inset(-15)
        }
        
        buttonPercent.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalTo(buttonPlusMinus.snp.right).offset(10)
            make.bottom.equalTo(buttonNine.snp.top).inset(-15)
        }
        
        buttonDivision.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalTo(buttonPercent.snp.right).offset(10)
            make.bottom.equalTo(buttonMultiply.snp.top).inset(-15)
        }
        
        buttonSeven.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalToSuperview().offset(20)
            make.bottom.equalTo(buttonFour.snp.top).offset(-15)
        }
        
        buttonEight.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalTo(buttonSeven.snp.right).offset(10)
            make.bottom.equalTo(buttonFive.snp.top).inset(-15)
        }
        
        buttonNine.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalTo(buttonEight.snp.right).offset(10)
            make.bottom.equalTo(buttonSix.snp.top).inset(-15)
        }
        
        buttonMultiply.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalTo(buttonNine.snp.right).offset(10)
            make.bottom.equalTo(buttonMinus.snp.top).inset(-15)
        }
        
        buttonFour.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalToSuperview().offset(20)
            make.bottom.equalTo(buttonOne.snp.top).inset(-15)
        }
        
        buttonFive.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalTo(buttonFour.snp.right).offset(10)
            make.bottom.equalTo(buttonTwo.snp.top).inset(-15)
        }
        
        buttonSix.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalTo(buttonFive.snp.right).offset(10)
            make.bottom.equalTo(buttonThree.snp.top).inset(-15)
        }
        
        buttonMinus.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalTo(buttonSix.snp.right).offset(10)
            make.bottom.equalTo(buttonPlus.snp.top).inset(-15)
        }
        
        buttonOne.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalToSuperview().offset(20)
            make.bottom.equalTo(buttonZero.snp.top).inset(-15)
        }
        
        buttonTwo.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalTo(buttonOne.snp.right).offset(10)
            make.bottom.equalTo(buttonZero.snp.top).inset(-15)
        }
        
        buttonThree.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalTo(buttonTwo.snp.right).offset(10)
            make.bottom.equalTo(buttonDot.snp.top).inset(-15)
        }
        
        buttonPlus.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalTo(buttonThree.snp.right).offset(10)
            make.bottom.equalTo(buttonEquals.snp.top).inset(-15)
        }
        
        buttonZero.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(170)
            make.bottom.equalToSuperview().inset(50)
            make.left.equalToSuperview().offset(20)
        }
        
        buttonDot.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.bottom.equalToSuperview().inset(50)
            make.left.equalTo(buttonZero.snp.right).offset(10)
        }
        
        buttonEquals.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.bottom.equalTo(view.snp.bottom).inset(50)
            make.left.equalTo(buttonDot.snp.right).offset(10)
        }
    }
}
