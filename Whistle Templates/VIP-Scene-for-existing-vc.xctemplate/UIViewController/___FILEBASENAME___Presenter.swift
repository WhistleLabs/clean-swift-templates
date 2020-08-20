//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_sceneName___Presentable {
    var viewController: ___VARIABLE_sceneName___Displayable? { get set }
    func presentSomething(response: ___VARIABLE_sceneName___Models.Something.Response)
}

class ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___Presentable {
    weak var viewController: ___VARIABLE_sceneName___Displayable?
        
    func presentSomething(response: ___VARIABLE_sceneName___Models.Something.Response) {
        let viewModel = ___VARIABLE_sceneName___Models.Something.ViewModel()
        viewController?.displaySomething(viewModel: viewModel)
    }
}
