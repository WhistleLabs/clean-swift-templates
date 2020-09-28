//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___VARIABLE_screenName___ViewController: UIViewController, WLRoutable, WLAlertable {
    let customView = ___VARIABLE_screenName___View()
    
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
        showDefaultNavigationWith(" ")
        //or
        //showSetupNavigationWith(" ")
        
        setupBindings()
        
    }
        
    func setupBindings() {
        
    }
        
}
