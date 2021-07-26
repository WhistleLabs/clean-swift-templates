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
