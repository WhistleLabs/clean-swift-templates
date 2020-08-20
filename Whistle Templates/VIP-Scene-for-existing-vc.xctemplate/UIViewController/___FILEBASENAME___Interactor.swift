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
    var store: WLStoreable?
    let worker = WLLibrary.sharedInstance
    
    init(with persistentStore: WLStoreable) {
        self.store = persistentStore
    }
        
        
    func doSomething(request: ___VARIABLE_sceneName___Models.Something.Request) {
        
        let response = ___VARIABLE_sceneName___Models.Something.Response()
        presenter?.presentSomething(response: response)
    }
}
