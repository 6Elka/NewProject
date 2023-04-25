//
//  BottomView.swift
//  NewProjectForDanya
//
//  Created by Artem on 25/04/2023.
//

import Foundation
import UIKit
import SnapKit

//MARK: - BottomSheetViewCotroller
final class BottomSheetViewCotroller: UIViewController {
    
    //MARK: View
    private lazy var bottomView: CustomView = {
        let view = CustomView()
        view.configure(type: .bottomView)
        return view
    }()
    
    //MARK: Text Label
    private lazy var titleBottom: CustomLabel = {
        let label = CustomLabel()
        label.configure(type: .titleBottomSheet)
        return label
    }()
    private lazy var textBottom: CustomLabel = {
        let label = CustomLabel()
        label.configure(type: .textBottomSheet)
        return label
    }()
    
    //MARK: Button
    private lazy var exit: CustomButton = {
        let button = CustomButton()
        button.configure(type: .exit)
        return button
    }()
    private lazy var callSupport: CustomButton = {
        let button = CustomButton()
        button.configure(type: .callSupport)
        return button
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
        setTitle()
        setText()
        setExit()
        setCallSupport()
        setImageView()
        setBackImage()
    }
    
    private func setupView() {
        view.addSubview(bottomView)
        bottomView.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview().inset(10)
            make.bottom.equalToSuperview().inset(40)
        }
    }
    
    private func setTitle() {
        view.addSubview(titleBottom)
        titleBottom.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(80)
            make.left.right.equalToSuperview().inset(30)
        }
    }
    
    private func setText() {
        view.addSubview(textBottom)
        textBottom.snp.makeConstraints { make in
            make.top.equalTo(titleBottom).inset(70)
            make.left.right.equalToSuperview().inset(10)
        }
    }
    
    private func setExit() {
        view.addSubview(exit)
        exit.snp.makeConstraints { make in
            make.top.equalTo(textBottom).inset(120)
            make.left.right.equalToSuperview().inset(20)
            make.height.equalTo(50)
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
    
    private func setCallSupport() {
        view.addSubview(callSupport)
        callSupport.snp.makeConstraints { make in
            make.top.equalTo(exit).inset(80)
            make.centerX.equalToSuperview()
        }
        callSupport.addTarget(self, action: #selector(tap), for: .touchUpInside)
        
    }
    
    @objc private func tap() {
        let vc = BottomSheetSupport()
        let navVC = UINavigationController(rootViewController: vc)
        if let sheet = navVC.sheetPresentationController {
            sheet.detents = [.custom(resolver: { context in
                350
            })]
        }
        present(navVC, animated: true)
        
    }
    
}
