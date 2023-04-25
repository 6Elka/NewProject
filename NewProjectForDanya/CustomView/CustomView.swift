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

final class CustomView: UIView {
    private var type: CustomViewState = .bottomView
    
    init() {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configure(type: CustomViewState) {
        self.type = type
        layer.cornerRadius = type.conrnerRadius
        backgroundColor = type.backgroundColor
    }
}
