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
    private lazy var callView: CustomView = {
        let view = CustomView()
        view.configure(type: .callView)
        return view
    }()
    private lazy var chatView: CustomView = {
        let view = CustomView()
        view.configure(type: .chatView)
        return view
    }()
    private lazy var supportView: CustomView = {
        let view = CustomView()
        view.configure(type: .supportView)
        return view
    }()
    
    //MARK: Text Label
    private lazy var callText: CustomLabel = {
        let label = CustomLabel()
        label.configure(type: .call)
        return label
    }()
    private lazy var chatText: CustomLabel = {
        let label = CustomLabel()
        label.configure(type: .chat)
        return label
    }()
    private lazy var writeToSupportText: CustomLabel = {
        let label = CustomLabel()
        label.configure(type: .writeToSupport)
        return label
    }()
    
    //MARK: Image
    private lazy var imageCall: CustomImage = {
        let image = CustomImage()
        image.configure(type: .call)
        return image
    }()
    private lazy var imageChat: CustomImage = {
        let image = CustomImage()
        image.configure(type: .chat)
        return image
    }()
    private lazy var imageSupport: CustomImage = {
        let image = CustomImage()
        image.configure(type: .support)
        return image
    }()
    
    //MARK: Image Back
    private lazy var imageBack: CustomImage = {
        let image = CustomImage()
        image.configure(type: .back)
        return image
    }()
    private lazy var imageView: CustomView = {
        let view = CustomView()
        view.configure(type: .imageView)
        return view
    }()
    
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
