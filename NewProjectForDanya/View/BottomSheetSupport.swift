//
//  BottomSheetSupport.swift
//  NewProjectForDanya
//
//  Created by Artem on 25/04/2023.
//

import Foundation
import UIKit
import SnapKit

//MARK: - BottomSheetSupport
final class BottomSheetSupport: UIViewController {
    
    //MARK: View
    private let callView = CallView()
    private let chatView = ChatView()
    private let supportView = SupportView()
    
    //MARK: Text Label
    private let callText = CallText()
    private let chatText = ChatText()
    private let writeToSupportText = WriteToSupportText()
    
    //MARK: Image
    private let imageCall = ImageCall()
    private let imageChat = ImageChat()
    private let imageSupport = ImageSupport()
    
    //MARK: Image Back
    private let imageBack = ImageBack()
    private let imageView = ImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    private func initialize() {
        setupView()
        setCallView()
        setChatView()
        setSupportView()
        setImageCall()
        setImageChat()
        setImageSupport()
        setCallText()
        setChatText()
        setSupportText()
        setImageView()
        setBackImage()
    }
    
    private func setupView() {
        view.backgroundColor = .white
    }
    
    private func setCallView() {
        view.addSubview(callView)
        callView.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(80)
            make.left.right.equalToSuperview().inset(20)
            make.height.equalTo(60)
        }
    }
    
    private func setChatView() {
        view.addSubview(chatView)
        chatView.snp.makeConstraints { make in
            make.top.equalTo(callView).inset(80)
            make.left.right.equalToSuperview().inset(20)
            make.height.equalTo(60)
        }
    }
    
    private func setSupportView() {
        view.addSubview(supportView)
        supportView.snp.makeConstraints { make in
            make.top.equalTo(chatView).inset(80)
            make.left.right.equalToSuperview().inset(20)
            make.height.equalTo(60)
        }
    }
    
    private func setImageCall() {
        callView.addSubview(imageCall)
        imageCall.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().inset(20)
            make.width.height.equalTo(30)
        }
    }
    
    private func setImageChat() {
        chatView.addSubview(imageChat)
        imageChat.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().inset(20)
            make.width.height.equalTo(30)
        }
    }
    
    private func setImageSupport() {
        supportView.addSubview(imageSupport)
        imageSupport.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().inset(20)
            make.width.height.equalTo(30)
        }
    }
    
    private func setCallText() {
        callView.addSubview(callText)
        callText.snp.makeConstraints { make in
            make.centerY.equalTo(callView)
            make.left.equalTo(70)
        }
    }
    
    private func setChatText() {
        chatView.addSubview(chatText)
        chatText.snp.makeConstraints { make in
            make.centerY.equalTo(chatView)
            make.left.equalTo(70)
        }
    }
    
    private func setSupportText() {
        supportView.addSubview(writeToSupportText)
        writeToSupportText.snp.makeConstraints { make in
            make.centerY.equalTo(supportView)
            make.left.equalTo(70)
        }
    }
    
    private func setImageView() {
        view.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.top.right.equalToSuperview().inset(30)
            make.width.height.equalTo(30)
        }
    }
    
    private func setBackImage() {
        imageView.addSubview(imageBack)
        imageBack.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.width.height.equalTo(20)
        }
    }
}
