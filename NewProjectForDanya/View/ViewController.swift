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
    private lazy var searchCard: CustomLabel = {
        let label = CustomLabel()
        label.configure(type: .searchCard)
        return label
    }()
    private lazy var searchingCard: CustomLabel = {
        let label = CustomLabel()
        label.configure(type: .searchingCard)
        return label
    }()
    private lazy var searchImageView: CustomImage = {
        let image = CustomImage()
        image.configure(type: .loader)
        return image
    }()
    private let someView = UIView()
    
    //MARK: - Two state
    private lazy var unregisteredCard: CustomLabel = {
        let label = CustomLabel()
        label.configure(type: .unregisteredCard)
        return label
    }()
    private lazy var textCard: CustomLabel = {
        let label = CustomLabel()
        label.configure(type: .getCard)
        return label
    }()
    private lazy var getNewCard: CustomButton = {
        let button = CustomButton()
        button.configure(type: .getNewCard)
        return button
    }()
    private lazy var activetedCard: CustomButton = {
        let button = CustomButton()
        button.configure(type: .activetedCard)
        return button
    }()
    private lazy var needHelp: CustomLabel = {
        let label = CustomLabel()
        label.configure(type: .needHelp)
        return label
    }()
    private lazy var support: CustomButton = {
        let button = CustomButton()
        button.configure(type: .support)
        return button
    }()
    
    //MARK: - Three state
    private lazy var userImage: CustomImage = {
        let image = CustomImage()
        image.configure(type: .imageUser)
        return image
    }()
    private lazy var welcomeUser: CustomLabel = {
        let label = CustomLabel()
        label.configure(type: .welcomeUser)
        return label
    }()
    private lazy var registeredNumber: CustomLabel = {
        let label = CustomLabel()
        label.configure(type: .registeredNumber)
        return label
    }()
    private lazy var payment: CustomButton = {
        let button = CustomButton()
        button.configure(type: .payment)
        return button
    }()
    private lazy var wrongNumber: CustomButton = {
        let button = CustomButton()
        button.configure(type: .wrongNumber)
        return button
    }()
    
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
        lazy var leftBarButton: CustomBarButton = {
            let btn = CustomBarButton()
            btn.configure(type: .left)
            return btn
        }()
        return leftBarButton
    }
    
    private func rightBarButtonItem() -> UIBarButtonItem {
        lazy var rightBarButton: CustomBarButton = {
            let btn = CustomBarButton()
            btn.configure(type: .right)
            return btn
        }()
        return rightBarButton
    }

}

