//
//  CustomBarButton.swift
//  NewProjectForDanya
//
//  Created by Artem on 25/04/2023.
//

import Foundation
import UIKit

enum CustomBarButtonState {
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

final class CustomBarButton: UIBarButtonItem {
    private var type: CustomBarButtonState = .left
    
    override init() {
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configure(type: CustomBarButtonState) {
        image = UIImage(systemName: type.systemName)?.withTintColor(.black, renderingMode: .alwaysOriginal)
        style = type.style
        action = #selector(back)
    }
    
    @objc private func back() {
        print("back")
    }
}
