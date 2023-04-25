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
    static let green = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
    static let lightGreen = UIColor.green.withAlphaComponent(0.2)
    static let lightPink = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1).withAlphaComponent(0.2)
    static let lightBlue = UIColor.systemBlue.withAlphaComponent(0.2)
}

enum Text {
    static let getNewcard = "Получить новую карту"
    static let activatedCard = "Активировать пластиковую карту"
    static let searchCard = "Поиск карты"
    static let searcingCard = "Ищем карту лояльности, привязанную к номеру + 7(930)270-06-79"
    static let unregisteredCard = "На номер +7(930)270-06-79 не зарегистрированна карта лояльности"
    static let getCard = "Получите новую карту или активируйте пластиковую карту, выданную в магазине."
    static let support = "Напишите в поддержку"
    static let needHelp = "Нужна помощь?"
    static let welcomeUser = "Здравствуйте, Константин!"
    static let registeredNumber = "На ваш номер +7(930)270-06-79 зарегистрирована карта лояльности 278 000 000 00-00 Копите баллы, получайте скидки!"
    static let beginPaymnet = "Начать покупки"
    static let wrongNumber = "Неправильный номер карты"
    static let nameCard = "Карта лояльности"
    static let titleBottomSheet = "Убедитесь, что использовали нужную учетную запись"
    static let textBottomSheet = "Если это неправильная учетная запись, выйдите из нее. Или обратитесь в поддержку"
    static let exit = "Выйти"
    static let callSupport = "Связаться с поддержкой"
    static let call = "Звонок на горячую линию"
    static let chat = "Чат с оператором"
    static let writingToSupport = "Написать в техподдержку"
}

enum Font {
    static let ubuntu = "Ubuntu-Medium"
}

enum ImageName {
    static let loader = "Loader"
    static let user = "User"
    static let left = "chevron.left"
    static let right = "exclamationmark.circle"
    static let back = "multiply"
    static let call = "Call"
    static let support = "Support"
    static let chat = "Chat"
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

