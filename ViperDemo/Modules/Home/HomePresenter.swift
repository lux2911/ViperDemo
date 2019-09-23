//
//  HomePresenter.swift
//  ViperDemo
//
//  Created by Tomislav Luketic on 9/22/19.
//  Copyright (c) 2019 lux. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class HomePresenter {

    // MARK: - Private properties -

    private unowned let view: HomeViewInterface
    private let interactor: HomeInteractorInterface
    private let wireframe: HomeWireframeInterface

    // MARK: - Lifecycle -

    init(view: HomeViewInterface, interactor: HomeInteractorInterface, wireframe: HomeWireframeInterface) {
        self.view = view
        self.interactor = interactor
        self.wireframe = wireframe
    }
}

// MARK: - Extensions -

extension HomePresenter: HomePresenterInterface {
    func didTapViewOneButton() {
        self.wireframe.navigate(to: .ViewOne)
    }
    
    func didTapViewTwoButton() {
        self.wireframe.navigate(to: .ViewTwo)
    }
    
}