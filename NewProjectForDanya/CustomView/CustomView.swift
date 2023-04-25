//
//  CustomView.swift
//  NewProjectForDanya
//
//  Created by Artem on 25/04/2023.
//

import Foundation
import UIKit

enum CustomViewState {
    case bottomView
    case imageView
    case callView
    case chatView
    case supportView
    
    var backgroundColor: UIColor {
        switch self {
        case .bottomView:
            return .white
        case .imageView:
            return Color.lightGray
        case .callView:
            return Color.lightGreen
        case .chatView:
            return Color.lightPink
        case .supportView:
            return Color.lightBlue
        }
    }
    
    var conrnerRadius: CGFloat {
        switch self {
        case .bottomView, .imageView, .callView, .chatView, .supportView:
            return 15
        }
    }
}

final class BottomView: UIView {
    private var type: CustomViewState = .bottomView
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func configure(type: CustomViewState) {
        self.type = type
        layer.cornerRadius = type.conrnerRadius
        backgroundColor = type.backgroundColor
    }
}

final class ImageView: UIView {
    private var type: CustomViewState = .imageView
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func configure(type: CustomViewState) {
        self.type = type
        layer.cornerRadius = type.conrnerRadius
        backgroundColor = type.backgroundColor
    }
}

final class CallView: UIView {
    private var type: CustomViewState = .callView
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func configure(type: CustomViewState) {
        self.type = type
        layer.cornerRadius = type.conrnerRadius
        backgroundColor = type.backgroundColor
    }
}

final class ChatView: UIView {
    private var type: CustomViewState = .chatView
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func configure(type: CustomViewState) {
        self.type = type
        layer.cornerRadius = type.conrnerRadius
        backgroundColor = type.backgroundColor
    }
}

final class SupportView: UIView {
    private var type: CustomViewState = .supportView
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func configure(type: CustomViewState) {
        self.type = type
        layer.cornerRadius = type.conrnerRadius
        backgroundColor = type.backgroundColor
    }
}
