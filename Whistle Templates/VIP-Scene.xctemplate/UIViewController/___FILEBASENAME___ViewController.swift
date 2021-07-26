//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_sceneName___Displayable: AnyObject {
    func displaySomething(viewModel: ___VARIABLE_sceneName___Models.Something.ViewModel)
    func displayError(viewModel: ___VARIABLE_sceneName___Models.Error.ViewModel)
}

class ___VARIABLE_sceneName___ViewController: WLBaseViewController<___VARIABLE_sceneName___View>, WLAlertable, WLActivityIndicatable {
    var interactor: ___VARIABLE_sceneName___Interactable?

    required init(routerParams: WLRouterParams) throws {
        guard let extraParams = routerParams.extraParams else {
            throw WLRouterParamsError.missingParameters
        }
        //grab stuff from extraParams
        
        super.init()
        setupVIP() // create VIP cycle
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        doSomething()
    }
        
        
    func doSomething() {
        let request = ___VARIABLE_sceneName___Models.Something.Request()
        interactor?.doSomething(request: request)
    }
}


extension ___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName___Displayable {
// MARK: CLEAN SWIFT VIP

    func setupVIP() {
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
