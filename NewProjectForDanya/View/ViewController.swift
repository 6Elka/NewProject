//
//  ViewController.swift
//  NewProjectForDanya
//
//  Created by Artem on 24/04/2023.
//

import UIKit
import SnapKit

//MARK: - ViewController
final class ViewController: UIViewController {
    
    //MARK: One state
    private let searchCard = SearchCard()
    private let searchingCard = SearchingCard()
    private let searchImageView = SearchingImage()
    private let someView = UIView()
    
    //MARK: - Two state
    private let unregisteredCard = UnRegisteredCard()
    private let textCard = GetCard()
    private let getNewCard = GetNewCard()
    private let activetedCard = ActivatedCard()
    private let needHelp = NeedHelp()
    private let support = Support()
    
    //MARK: - Three state
    private let userImage = UserImage()
    private let welcomeUser = WelcomeUser()
    private let registeredNumber = RegisteredNumber()
    private let payment = Payment()
    private let wrongNumber = WrongNumber()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialize()
//        setupFirst()
//        setupSecond()
//        setupThree()
        
        setupBottomSheet()
    }
    
    private func initialize() {
        self.view.backgroundColor = .white
        self.navigationItem.leftBarButtonItem = leftBarButtonItem()
        self.navigationItem.rightBarButtonItem = rightBarButtonItem()
        self.title = Text.nameCard
    }
    
    //MARK: - First State
    private func setupFirst() {
        setSearchCard()
        setSearchingCard()
        setView()
        setImage()
    }
    
    private func setSearchCard() {
        view.addSubview(searchCard)
        searchCard.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(120)
        }
    }
    
    private func setSearchingCard() {
        view.addSubview(searchingCard)
        searchingCard.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(15)
            make.top.equalTo(searchCard).inset(50)
        }
    }
    
    private func setView() {
        view.addSubview(someView)
        someView.snp.makeConstraints { make in
            make.top.equalTo(searchingCard).inset(50)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(80)
        }
    }
    
    private func setImage() {
        someView.rotate360()
        someView.addSubview(searchImageView)
        searchImageView.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.width.height.equalTo(40)
        }
    }
    
    //MARK: - Second State
    private func setupSecond() {
        setUnregistered()
        setTextCard()
        setGetNewCard()
        setActivatedCard()
        setNeedHelp()
        setSupport()
    }
    
    private func setUnregistered() {
        view.addSubview(unregisteredCard)
        unregisteredCard.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(120)
            make.left.right.equalToSuperview().inset(60)
        }
    }
    
    private func setTextCard() {
        view.addSubview(textCard)
        textCard.snp.makeConstraints { make in
            make.top.equalTo(unregisteredCard).inset(100)
            make.left.right.equalToSuperview().inset(20)
        }
    }
    
    private func setGetNewCard() {
        view.addSubview(getNewCard)
        getNewCard.snp.makeConstraints { make in
            make.top.equalTo(textCard).inset(100)
            make.left.right.equalToSuperview().inset(10)
            make.height.equalTo(50)
        }
    }
    
    private func setActivatedCard() {
        view.addSubview(activetedCard)
        activetedCard.snp.makeConstraints { make in
            make.top.equalTo(getNewCard).inset(80)
            make.left.right.equalToSuperview().inset(10)
            make.height.equalTo(50)
        }
    }
    
    private func setNeedHelp() {
        view.addSubview(needHelp)
        needHelp.snp.makeConstraints { make in
            make.top.equalTo(activetedCard).inset(120)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(30)
        }
    }
    
    private func setSupport() {
        view.addSubview(support)
        support.snp.makeConstraints { make in
            make.top.equalTo(needHelp).inset(30)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(30)
        }
    }
    
    //MARK: - Three state
    private func setupThree() {
        setUserImage()
        setWelcomeUser()
        setRegisteredNumber()
        setPayment()
        setWrongNumber()
    }
    
    private func setUserImage() {
        view.addSubview(userImage)
        userImage.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(100)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(400)
        }
    }
    
    private func setWelcomeUser() {
        view.addSubview(welcomeUser)
        welcomeUser.snp.makeConstraints { make in
            make.top.equalTo(userImage).inset(400)
            make.centerX.equalToSuperview()
        }
    }
    
    private func setRegisteredNumber() {
        view.addSubview(registeredNumber)
        registeredNumber.snp.makeConstraints { make in
            make.top.equalTo(welcomeUser).inset(50)
            make.left.right.equalToSuperview().inset(60)
        }
    }
    
    private func setPayment() {
        view.addSubview(payment)
        payment.snp.makeConstraints { make in
            make.top.equalTo(registeredNumber).inset(110)
            make.left.right.equalToSuperview().inset(10)
            make.height.equalTo(50)
        }
    }
    
    private func setWrongNumber() {
        view.addSubview(wrongNumber)
        wrongNumber.snp.makeConstraints { make in
            make.top.equalTo(payment).inset(60)
            make.centerX.equalToSuperview()
            make.height.equalTo(50)
            make.width.equalTo(250)
        }
    }
    
    //MARK: - BottomSheet
    private func setupBottomSheet() {
        let vc = BottomSheetViewCotroller()
        let navVC = UINavigationController(rootViewController: vc)
        if let sheet = navVC.sheetPresentationController {
            sheet.detents = [.medium()]
        }
        navigationController?.present(navVC, animated: true)
    }
    
    //MARK: - Left / Right Bar Button Item
    private func leftBarButtonItem() -> UIBarButtonItem {
        let barButton = LeftBarButton()
        return barButton
    }
    
    private func rightBarButtonItem() -> UIBarButtonItem {
        let barButton = RightBarButton()
        return barButton
    }

}

