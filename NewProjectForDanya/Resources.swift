//
//  Color.swift
//  NewProjectForDanya
//
//  Created by Artem on 24/04/2023.
//

import Foundation
import UIKit

enum Color {
    static let pink = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    static let white = UIColor.white
    static let clear = UIColor.clear
    static let black = UIColor.black
    static let blue = UIColor.systemBlue
    static let lightGray = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
}

enum Text {
    static let getNewcard = "Получить новую карту"
    static let activatedCard = "Активировать пластиковую карту"
    static let searchCard = "Поиск карты"
    static let searcingCard = "Ищем новую карту лояльности, привязанную к номеру + 7(930)270-06-79"
    static let unregisteredCard = "На номер +7(930)270-06-79 не зарегистрированна карта лояльности"
    static let getCard = "Получите новую карту или активируйте пластиковую карту, выданную в магазине."
    static let support = "Напишите в поддержку"
    static let needHelp = "Нужна помощь?"
    static let welcomeUser = "Здравствуйте, Константин!"
    static let registeredNumber = "На ваш номер +7(930)270-06-79 зарегистрирована карта лояльности 278 000 000 00-00 Копите баллы, получайте скидки!"
    static let beginPaymnet = "Начать покупки"
    static let wrongNumber = "Неправильный номер карты"
    static let nameCard = "Карта лояльности"
}

enum Font {
    static let ubuntu = "Ubuntu-Medium"
}

enum LoaderImage {
    static let loader = "Loader"
    static let user = "User"
}

extension UIView {
    func rotate360(duration: CFTimeInterval = 1) {
        let rotation = CABasicAnimation(keyPath: "transform.rotation")
        rotation.fromValue = 0.0
        rotation.toValue = CGFloat(Double.pi * 2)
        rotation.isRemovedOnCompletion = false
        rotation.duration = duration
        rotation.repeatCount = .infinity
        self.layer.add(rotation, forKey: nil)
    }
}

