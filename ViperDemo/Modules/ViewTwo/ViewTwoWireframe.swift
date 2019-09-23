//
//  ViewTwoWireframe.swift
//  ViperDemo
//
//  Created by Tomislav Luketic on 9/22/19.
//  Copyright (c) 2019 lux. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class ViewTwoWireframe: BaseWireframe {

    // MARK: - Private properties -

    private let storyboard = UIStoryboard(name: "ViewTwo", bundle: nil)

    // MARK: - Module setup -

    init() {
        let moduleViewController = storyboard.instantiateViewController(ofType: ViewTwoViewController.self)
        super.init(viewController: moduleViewController)
        
        let interactor = ViewTwoInteractor()
        let presenter = ViewTwoPresenter(view: moduleViewController, interactor: interactor, wireframe: self)
        moduleViewController.presenter = presenter
    }

}

// MARK: - Extensions -

extension ViewTwoWireframe: ViewTwoWireframeInterface {
}