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
        case .searchCard, .searchingCard, .unregisteredCard, .getCard, .welcomeUser, .titleBottomSheet, .call, .chat, .writeToSupport:
            return Color.black
        case .needHelp, .textBottomSheet, .registeredNumber:
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
    
    var size: CGFloat {
        switch self {
        case .searchCard:
            return 20
        case .searchingCard:
            return 17
        case .unregisteredCard:
            return 20
        case .getCard:
            return 17
        case .needHelp:
            return 16
        case .welcomeUser:
            return 20
        case .registeredNumber:
            return 17
        case .titleBottomSheet:
            return 20
        case .textBottomSheet:
            return 18
        case .call:
            return 18
        case .chat:
            return 18
        case .writeToSupport:
            return 18
        }
    }
}

final class CustomLabel: UILabel {
    private var type: CustomLabelState = .searchCard
    
    init() {
        super.init(frame: .zero)
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
        font = .systemFont(ofSize: type.size, weight: type.weight)
    }
}
