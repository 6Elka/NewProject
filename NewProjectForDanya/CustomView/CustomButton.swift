//
//  CustomButton.swift
//  NewProjectForDanya
//
//  Created by Artem on 24/04/2023.
//

import Foundation
import UIKit

enum CustomButtonState {
    case getNewCard
    case activetedCard
    case support
    case payment
    case wrongNumber
    case exit
    case callSupport
    
    var title: String {
        switch self {
        case .getNewCard:
            return Text.getNewcard
        case .activetedCard:
            return Text.activatedCard
        case .support:
            return Text.support
        case .payment:
            return Text.beginPaymnet
        case .wrongNumber:
            return Text.wrongNumber
        case .exit:
            return Text.exit
        case .callSupport:
            return Text.callSupport
        }
    }
    
    
    var textColor: UIColor {
        switch self {
        case .getNewCard, .payment, .exit:
            return Color.white
        case .activetedCard:
            return Color.pink
        case .support, .wrongNumber, .callSupport:
            return Color.blue
        }
    }
    
    var backgroundColor: UIColor {
        switch self {
        case .getNewCard, .payment, .exit:
            return Color.pink
        case .activetedCard:
            return Color.white
        case .support, .wrongNumber, .callSupport:
            return Color.clear
        }
    }
    
    var borderColor: CGColor {
        switch self {
        case .getNewCard, .support, .payment, .wrongNumber, .exit, .callSupport:
            return Color.clear.cgColor
        case .activetedCard:
            return Color.pink.cgColor
        
        }
    }
    
    var cornerRadius: CGFloat {
        switch self {
        case .getNewCard, .activetedCard, .support, .payment, .wrongNumber, .callSupport, .exit:
            return 10
        }
    }
    
    var borderWidth: CGFloat {
        switch self {
        case .getNewCard, .support, .payment, .wrongNumber, .exit, .callSupport:
            return 0
        case .activetedCard:
            return 1
        }
    }
}

final class GetNewCard: UIButton {
    private var type: CustomButtonState = .getNewCard
    
    init() {
        super.init(frame: .zero)
        configure(type: .getNewCard)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configure(type: CustomButtonState) {
        self.type = type
        setTitle(type.title, for: .normal)
        setTitleColor(type.textColor, for: .normal)
        layer.cornerRadius = type.cornerRadius
        backgroundColor = type.backgroundColor
        layer.borderWidth = type.borderWidth
        layer.borderColor = type.borderColor
        titleLabel?.font = UIFont(name: Font.ubuntu, size: 15)
        self.addTarget(self, action: #selector(tap), for: .touchUpInside)
    }
    
    @objc private func tap() {
        print("TAP")
    }
}

final class ActivatedCard: UIButton {
    private var type: CustomButtonState = .activetedCard
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configure(type: CustomButtonState) {
        self.type = type
        setTitle(type.title, for: .normal)
        setTitleColor(type.textColor, for: .normal)
        layer.cornerRadius = type.cornerRadius
        backgroundColor = type.backgroundColor
        layer.borderWidth = type.borderWidth
        layer.borderColor = type.borderColor
        titleLabel?.font = UIFont(name: Font.ubuntu, size: 15)
        self.addTarget(self, action: #selector(tap), for: .touchUpInside)
    }
    
    @objc private func tap() {
        print("TAP")
    }
}

final class Support: UIButton {
    private var type: CustomButtonState = .support
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configure(type: CustomButtonState) {
        self.type = type
        setTitle(type.title, for: .normal)
        setTitleColor(type.textColor, for: .normal)
        layer.cornerRadius = type.cornerRadius
        backgroundColor = type.backgroundColor
        layer.borderWidth = type.borderWidth
        layer.borderColor = type.borderColor
        titleLabel?.font = UIFont(name: Font.ubuntu, size: 15)
        self.addTarget(self, action: #selector(tap), for: .touchUpInside)
    }
    
    @objc private func tap() {
        print("TAP")
    }
}

final class Payment: UIButton {
    private var type: CustomButtonState = .payment
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configure(type: CustomButtonState) {
        self.type = type
        setTitle(type.title, for: .normal)
        setTitleColor(type.textColor, for: .normal)
        layer.cornerRadius = type.cornerRadius
        backgroundColor = type.backgroundColor
        layer.borderWidth = type.borderWidth
        layer.borderColor = type.borderColor
        titleLabel?.font = UIFont(name: Font.ubuntu, size: 15)
        self.addTarget(self, action: #selector(tap), for: .touchUpInside)
    }
    
    @objc private func tap() {
        print("TAP")
    }
}

final class WrongNumber: UIButton {
    private var type: CustomButtonState = .wrongNumber
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configure(type: CustomButtonState) {
        self.type = type
        setTitle(type.title, for: .normal)
        setTitleColor(type.textColor, for: .normal)
        layer.cornerRadius = type.cornerRadius
        backgroundColor = type.backgroundColor
        layer.borderWidth = type.borderWidth
        layer.borderColor = type.borderColor
        titleLabel?.font = UIFont(name: Font.ubuntu, size: 15)
        self.addTarget(self, action: #selector(tap), for: .touchUpInside)
    }
    
    @objc private func tap() {
        print("TAP")
    }
}

final class Exit: UIButton {
    private var type: CustomButtonState = .exit
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configure(type: CustomButtonState) {
        self.type = type
        setTitle(type.title, for: .normal)
        setTitleColor(type.textColor, for: .normal)
        layer.cornerRadius = type.cornerRadius
        backgroundColor = type.backgroundColor
        layer.borderWidth = type.borderWidth
        layer.borderColor = type.borderColor
        titleLabel?.font = UIFont(name: Font.ubuntu, size: 15)
        self.addTarget(self, action: #selector(tap), for: .touchUpInside)
    }
    
    @objc private func tap() {
        print("TAP")
    }
}


final class CallSupport: UIButton {
    private var type: CustomButtonState = .callSupport
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configure(type: CustomButtonState) {
        self.type = type
        setTitle(type.title, for: .normal)
        setTitleColor(type.textColor, for: .normal)
        layer.cornerRadius = type.cornerRadius
        backgroundColor = type.backgroundColor
        layer.borderWidth = type.borderWidth
        layer.borderColor = type.borderColor
        titleLabel?.font = UIFont(name: Font.ubuntu, size: 15)
    }
}
