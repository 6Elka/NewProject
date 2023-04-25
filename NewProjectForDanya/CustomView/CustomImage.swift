//
//  CustomImage.swift
//  NewProjectForDanya
//
//  Created by Artem on 24/04/2023.
//

import Foundation
import UIKit

enum CustomImageState {
    case loader
    case imageUser
    case back
    case call
    case chat
    case support
    
    var title: String {
        switch self {
        case .loader:
            return ImageName.loader
        case .imageUser:
            return ImageName.user
        case .back:
            return ImageName.back
        case .call:
            return ImageName.call
        case .chat:
            return ImageName.chat
        case .support:
            return ImageName.support
        }
    }
    
    var tintColor: UIColor {
        switch self {
        case .loader, .chat:
            return Color.pink
        case .imageUser:
            return Color.clear
        case .back:
            return Color.black
        case .call:
            return Color.green
        case .support:
            return Color.blue
        }
    }
    
    var contentMode: UIView.ContentMode {
        switch self {
        case .loader, .imageUser, .back, .call, .chat, .support:
            return .scaleAspectFit
        }
    }
}

final class CustomImage: UIImageView {
    private var type: CustomImageState = .loader
    
    init() {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configure(type: CustomImageState) {
        self.type = type
        if type == .imageUser {
            self.image = UIImage(named: ImageName.user)
        } else {
            self.image = UIImage(named: type.title)?.withTintColor(type.tintColor, renderingMode: .alwaysOriginal) ?? UIImage(systemName: type.title)?.withTintColor(type.tintColor, renderingMode: .alwaysOriginal)
        }
        self.contentMode = type.contentMode
    }
}
