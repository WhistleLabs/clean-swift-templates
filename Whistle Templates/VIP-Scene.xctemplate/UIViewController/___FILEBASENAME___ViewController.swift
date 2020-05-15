//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_sceneName___Displayable: class {
    func displaySomething(viewModel: ___VARIABLE_sceneName___Models.Something.ViewModel)
}

class ___VARIABLE_sceneName___ViewController: UIViewController, WLRoutable, WLAlertable {
    var interactor: ___VARIABLE_sceneName___Interactable?
    let customView = ___VARIABLE_sceneName___View()
    
    override func loadView() { self.view = customView }
    
    func inject(routerParams: WLRouterParams) {
        guard let extraParams = routerParams.extraParams else {
            assertionFailure("Unhandled dependency injection error")
            return
        }
        //grab stuff from extraParams
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        setupBindings()
        
        doSomething()
    }
        
    func setupBindings() {
        
    }
        
    func doSomething() {
        let request = ___VARIABLE_sceneName___Models.Something.Request()
        interactor?.doSomething(request: request)
    }
}


extension ___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName___Displayable {
// MARK: CLEAN SWIFT VIP

    func setup() {
        let viewController = self
        let interactor = ___VARIABLE_sceneName___Interactor(with: WLLibrary.sharedInstance.persistentStore)
        let presenter = ___VARIABLE_sceneName___Presenter()
        
        viewController.interactor = interactor
        interactor.presenter = presenter
        presenter.viewController = viewController
    }
    
    func displaySomething(viewModel: ___VARIABLE_sceneName___Models.Something.ViewModel) {
        //someLabel.text = viewModel.name
    }

}
