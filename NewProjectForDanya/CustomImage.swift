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
    
    var title: String {
        switch self {
        case .loader:
            return ImageName.loader
        case .imageUser:
            return ImageName.user
        }
    }
    
    var contentMode: UIView.ContentMode {
        switch self {
        case .loader, .imageUser:
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
        self.image = UIImage(named: ImageName.loader)?.withTintColor(Color.pink, renderingMode: .alwaysOriginal)
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
