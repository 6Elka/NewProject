//
//  CustomLabel.swift
//  NewProjectForDanya
//
//  Created by Artem on 24/04/2023.
//

import Foundation
import UIKit

enum CustomLabelState {
    case searchCard
    case searchingCard
    case unregisteredCard
    case getCard
    case needHelp
    case welcomeUser
    case registeredNumber
    case titleBottomSheet
    case textBottomSheet
    case call
    case chat
    case writeToSupport
    
    var title: String {
        switch self {
        case .searchCard:
            return Text.searchCard
        case .searchingCard:
            return Text.searcingCard
        case .unregisteredCard:
            return Text.unregisteredCard
        case .getCard:
            return Text.getCard
        case .needHelp:
            return Text.needHelp
        case .welcomeUser:
            return Text.welcomeUser
        case .registeredNumber:
            return Text.registeredNumber
        case .titleBottomSheet:
            return Text.titleBottomSheet
        case .textBottomSheet:
            return Text.textBottomSheet
        case .call:
            return Text.call
        case .chat:
            return Text.chat
        case .writeToSupport:
            return Text.writingToSupport
        }
    }
    
    var textColor: UIColor {
        switch self {
        case .searchCard, .searchingCard, .unregisteredCard, .getCard, .welcomeUser, .registeredNumber, .titleBottomSheet, .call, .chat, .writeToSupport:
            return Color.black
        case .needHelp, .textBottomSheet:
            return Color.lightGray
        }
    }
    
    var numberOfLines: Int {
        switch self {
        case .searchCard, .searchingCard, .unregisteredCard, .getCard, .needHelp, .welcomeUser, .registeredNumber, .titleBottomSheet, .textBottomSheet, .call, .chat, .writeToSupport:
            return 0
        }
    }
    
    var textAlignment: NSTextAlignment {
        switch self {
        case .searchCard, .searchingCard, .unregisteredCard, .getCard, .needHelp, .welcomeUser, .registeredNumber, .textBottomSheet, .titleBottomSheet, .call, .chat, .writeToSupport:
            return .center
        }
    }
    
    var weight: UIFont.Weight {
        switch self {
        case .searchCard, .unregisteredCard, .welcomeUser, .titleBottomSheet:
            return .medium
        case .searchingCard, .getCard, .needHelp, .registeredNumber, .textBottomSheet, .call, .chat, .writeToSupport:
            return .regular
        }
    }
}

final class SearchCard: UILabel {
    private var type: CustomLabelState = .searchCard
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configure(type: CustomLabelState) {
        self.type = type
        text = type.title
        textColor = type.textColor
        numberOfLines = type.numberOfLines
        textAlignment = type.textAlignment
        font = .systemFont(ofSize: 20, weight: type.weight)
    }
}

final class SearchingCard: UILabel {
    private var type: CustomLabelState = .searchingCard
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(type: CustomLabelState) {
        self.type = type
        text = type.title
        textColor = type.textColor
        numberOfLines = type.numberOfLines
        textAlignment = type.textAlignment
        font = .systemFont(ofSize: 17, weight: type.weight)
    }
}

final class UnRegisteredCard: UILabel {
    private var type: CustomLabelState = .unregisteredCard
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(type: CustomLabelState) {
        self.type = type
        text = type.title
        textColor = type.textColor
        numberOfLines = type.numberOfLines
        textAlignment = type.textAlignment
        font = .systemFont(ofSize: 20, weight: type.weight)
    }
}

final class GetCard: UILabel {
    private var type: CustomLabelState = .getCard
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(type: CustomLabelState) {
        self.type = type
        text = type.title
        textColor = type.textColor
        numberOfLines = type.numberOfLines
        textAlignment = type.textAlignment
        font = .systemFont(ofSize: 17, weight: type.weight)
    }
}

final class NeedHelp: UILabel {
    private var type: CustomLabelState = .needHelp
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(type: CustomLabelState) {
        self.type = type
        text = type.title
        textColor = type.textColor
        numberOfLines = type.numberOfLines
        textAlignment = type.textAlignment
        font = .systemFont(ofSize: 17, weight: type.weight)
    }
}

final class WelcomeUser: UILabel {
    private var type: CustomLabelState = .welcomeUser
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(type: CustomLabelState) {
        self.type = type
        text = type.title
        textColor = type.textColor
        numberOfLines = type.numberOfLines
        textAlignment = type.textAlignment
        font = .systemFont(ofSize: 20, weight: type.weight)
    }
}

final class RegisteredNumber: UILabel {
    private var type: CustomLabelState = .registeredNumber
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(type: CustomLabelState) {
        self.type = type
        text = type.title
        textColor = type.textColor
        numberOfLines = type.numberOfLines
        textAlignment = type.textAlignment
        font = .systemFont(ofSize: 17, weight: type.weight)
    }
}

final class TitleBottomSheet: UILabel {
    private var type: CustomLabelState = .titleBottomSheet
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(type: CustomLabelState) {
        self.type = type
        text = type.title
        textColor = type.textColor
        numberOfLines = type.numberOfLines
        textAlignment = type.textAlignment
        font = .systemFont(ofSize: 20, weight: type.weight)
    }
}

final class TextBottomSheet: UILabel {
    private var type: CustomLabelState = .textBottomSheet
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(type: CustomLabelState) {
        self.type = type
        text = type.title
        textColor = type.textColor
        numberOfLines = type.numberOfLines
        textAlignment = type.textAlignment
        font = .systemFont(ofSize: 20, weight: type.weight)
    }
}

final class CallText: UILabel {
    private var type: CustomLabelState = .call
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(type: CustomLabelState) {
        self.type = type
        text = type.title
        textColor = type.textColor
        numberOfLines = type.numberOfLines
        textAlignment = type.textAlignment
        font = .systemFont(ofSize: 17, weight: type.weight)
    }
}

final class ChatText: UILabel {
    private var type: CustomLabelState = .chat
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(type: CustomLabelState) {
        self.type = type
        text = type.title
        textColor = type.textColor
        numberOfLines = type.numberOfLines
        textAlignment = type.textAlignment
        font = .systemFont(ofSize: 17, weight: type.weight)
    }
}

final class WriteToSupportText: UILabel {
    private var type: CustomLabelState = .writeToSupport
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(type: CustomLabelState) {
        self.type = type
        text = type.title
        textColor = type.textColor
        numberOfLines = type.numberOfLines
        textAlignment = type.textAlignment
        font = .systemFont(ofSize: 17, weight: type.weight)
    }
}
