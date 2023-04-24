//
//  CustomBarButton.swift
//  NewProjectForDanya
//
//  Created by Artem on 25/04/2023.
//

import Foundation
import UIKit

enum CustomBarButton {
    case left
    case right
    
    var systemName: String {
        switch self {
        case .left:
            return ImageName.left
        case .right:
            return ImageName.right
        }
    }
    
    var style: UIBarButtonItem.Style {
        switch self {
        case .left, .right:
            return .done
        }
    }
}

final class LeftBarButton: UIBarButtonItem {
    private var type: CustomBarButton = .left
    
    override init() {
        super.init()
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func configure(type: CustomBarButton) {
        image = UIImage(systemName: type.systemName)?.withTintColor(.black, renderingMode: .alwaysOriginal)
        style = type.style
        action = #selector(back)
    }
    
    @objc private func back() {
        print("back")
    }
}

final class RightBarButton: UIBarButtonItem {
    private var type: CustomBarButton = .right
    
    override init() {
        super.init()
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func configure(type: CustomBarButton) {
        image = UIImage(systemName: type.systemName)?.withTintColor(.black, renderingMode: .alwaysOriginal)
        style = type.style
        action = #selector(back)
    }
    
    @objc private func back() {
        print("back")
    }
}
