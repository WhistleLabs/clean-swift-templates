//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___VARIABLE_screenName___ViewController: WLBaseViewController<___VARIABLE_screenName___View>, WLAlertable, WLActivityIndicatable {
    
    required init(routerParams: WLRouterParams) throws {
        guard let extraParams = routerParams.extraParams else {
            throw WLRouterParamsError.missingParameters
        }
        //grab stuff from extraParams
        super.init()
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        showDefaultNavigationWith(" ")
        //or
        //showSetupNavigationWith(" ")
        
        
    }
        
}
