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

final class SearchingImage: UIImageView {
    private var type: CustomImageState = .loader
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func configure(type: CustomImageState) {
        self.type = type
        self.image = UIImage(named: ImageName.loader)?.withTintColor(type.tintColor, renderingMode: .alwaysOriginal)
        self.contentMode = type.contentMode
    }
}

final class UserImage: UIImageView {
    private var type: CustomImageState = .imageUser
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func configure(type: CustomImageState) {
        self.type = type
        self.image = UIImage(named: ImageName.user)
        self.contentMode = type.contentMode
    }
}

final class ImageBack: UIImageView {
    private var type: CustomImageState = .back
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func configure(type: CustomImageState) {
        self.type = type
        self.image = UIImage(systemName: ImageName.back)?.withTintColor(type.tintColor, renderingMode: .alwaysOriginal)
        self.contentMode = type.contentMode
    }
}

final class ImageCall: UIImageView {
    private var type: CustomImageState = .call
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func configure(type: CustomImageState) {
        self.type = type
        self.image = UIImage(named: ImageName.call)?.withTintColor(type.tintColor, renderingMode: .alwaysOriginal)
        self.contentMode = type.contentMode
    }
}

final class ImageChat: UIImageView {
    private var type: CustomImageState = .chat
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func configure(type: CustomImageState) {
        self.type = type
        self.image = UIImage(named: ImageName.chat)?.withTintColor(type.tintColor, renderingMode: .alwaysOriginal)
        self.contentMode = type.contentMode
    }
}

final class ImageSupport: UIImageView {
    private var type: CustomImageState = .support
    
    init() {
        super.init(frame: .zero)
        configure(type: self.type)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func configure(type: CustomImageState) {
        self.type = type
        self.image = UIImage(named: ImageName.support)?.withTintColor(type.tintColor, renderingMode: .alwaysOriginal)
        self.contentMode = type.contentMode
    }
}
