//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import RealmSwift

protocol ___VARIABLE_sceneName___Interactable {
    func doSomething(request: ___VARIABLE_sceneName___Models.Something.Request)
}

class ___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___Interactable {
    var presenter: ___VARIABLE_sceneName___Presentable?
    let worker: WLLibrary
    
    init(with worker: WLLibrary) {
        self.worker = worker
    }
        
    // TODO: rename this to something useful    
    func doSomething(request: ___VARIABLE_sceneName___Models.Something.Request) {
        
        let response = ___VARIABLE_sceneName___Models.Something.Response()
        presenter?.presentSomething(response: response)
    }

    func present(_ error: NSError) {
        let response = ___VARIABLE_sceneName___Models.Error.Response(error: error)
        presenter?.presentError(response: response)
    }
}


// add the below code to your viewController and call setupVIP() in its init() or viewDidLoad()
//
// viewController needs this property:
// var interactor: ___VARIABLE_sceneName___Interactable?
//
// then add all of the below
/*
protocol ___VARIABLE_sceneName___Displayable: AnyObject {
    func displaySomething(viewModel: ___VARIABLE_sceneName___Models.Something.ViewModel)
    func displayError(viewModel: ___VARIABLE_sceneName___Models.Error.ViewModel)
}

extension ___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName___Displayable {
// MARK: CLEAN SWIFT VIP

    func setup() {
        let viewController = self
        let interactor = ___VARIABLE_sceneName___Interactor(with: WLLibrary.sharedInstance)
        let presenter = ___VARIABLE_sceneName___Presenter()
        
        viewController.interactor = interactor
        interactor.presenter = presenter
        presenter.viewController = viewController
    }
    
    func displaySomething(viewModel: ___VARIABLE_sceneName___Models.Something.ViewModel) {
        //someLabel.text = viewModel.name
    }

    func displayError(viewModel: ___VARIABLE_sceneName___Models.Error.ViewModel) {
        dismissActivityIndicator()
        showAlert(viewModel.message)
    }

}
*/