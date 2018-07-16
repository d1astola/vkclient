// MARK: - Mocks generated from file: VKClient/Core/Common/IPNavigationBarHelper.swift at 2018-07-06 07:38:10 +0000

//
//  IPNavigationBarHelper.swift
//  VKClient
//
//  Created by Игорь Пак on 28/06/2018.
//  Copyright © 2018 Igor Pak. All rights reser
import Cuckoo
@testable import VKClient

import UIKit

class MockIPNavigationBarHelper: IPNavigationBarHelper, Cuckoo.ClassMock {
    typealias MocksType = IPNavigationBarHelper
    typealias Stubbing = __StubbingProxy_IPNavigationBarHelper
    typealias Verification = __VerificationProxy_IPNavigationBarHelper
    let cuckoo_manager = Cuckoo.MockManager(hasParent: true)

    

    

    
    // ["name": "applyStyle", "returnSignature": "", "fullyQualifiedName": "applyStyle(_: UINavigationBar)", "parameterSignature": "_ navBar: UINavigationBar", "parameterSignatureWithoutNames": "navBar: UINavigationBar", "inputTypes": "UINavigationBar", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "public", "parameterNames": "navBar", "call": "navBar", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "navBar", type: "UINavigationBar", range: CountableRange(238..<263), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
    public override func applyStyle(_ navBar: UINavigationBar)  {
        
            return cuckoo_manager.call("applyStyle(_: UINavigationBar)",
                parameters: (navBar),
                superclassCall:
                    
                    super.applyStyle(navBar)
                    )
        
    }
    
    // ["name": "setupHamburgerButton", "returnSignature": "", "fullyQualifiedName": "setupHamburgerButton(_: UINavigationItem, drawer: IPRightMenuVC)", "parameterSignature": "_ navItem: UINavigationItem, drawer: IPRightMenuVC", "parameterSignatureWithoutNames": "navItem: UINavigationItem, drawer: IPRightMenuVC", "inputTypes": "UINavigationItem, IPRightMenuVC", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "public", "parameterNames": "navItem, drawer", "call": "navItem, drawer: drawer", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "navItem", type: "UINavigationItem", range: CountableRange(433..<460), nameRange: CountableRange(0..<0)), CuckooGeneratorFramework.MethodParameter(label: Optional("drawer"), name: "drawer", type: "IPRightMenuVC", range: CountableRange(462..<483), nameRange: CountableRange(462..<468))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
    public override func setupHamburgerButton(_ navItem: UINavigationItem, drawer: IPRightMenuVC)  {
        
            return cuckoo_manager.call("setupHamburgerButton(_: UINavigationItem, drawer: IPRightMenuVC)",
                parameters: (navItem, drawer),
                superclassCall:
                    
                    super.setupHamburgerButton(navItem, drawer: drawer)
                    )
        
    }
    

	struct __StubbingProxy_IPNavigationBarHelper: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func applyStyle<M1: Cuckoo.Matchable>(_ navBar: M1) -> Cuckoo.ClassStubNoReturnFunction<(UINavigationBar)> where M1.MatchedType == UINavigationBar {
	        let matchers: [Cuckoo.ParameterMatcher<(UINavigationBar)>] = [wrap(matchable: navBar) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockIPNavigationBarHelper.self, method: "applyStyle(_: UINavigationBar)", parameterMatchers: matchers))
	    }
	    
	    func setupHamburgerButton<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ navItem: M1, drawer: M2) -> Cuckoo.ClassStubNoReturnFunction<(UINavigationItem, IPRightMenuVC)> where M1.MatchedType == UINavigationItem, M2.MatchedType == IPRightMenuVC {
	        let matchers: [Cuckoo.ParameterMatcher<(UINavigationItem, IPRightMenuVC)>] = [wrap(matchable: navItem) { $0.0 }, wrap(matchable: drawer) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockIPNavigationBarHelper.self, method: "setupHamburgerButton(_: UINavigationItem, drawer: IPRightMenuVC)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_IPNavigationBarHelper: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func applyStyle<M1: Cuckoo.Matchable>(_ navBar: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == UINavigationBar {
	        let matchers: [Cuckoo.ParameterMatcher<(UINavigationBar)>] = [wrap(matchable: navBar) { $0 }]
	        return cuckoo_manager.verify("applyStyle(_: UINavigationBar)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func setupHamburgerButton<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ navItem: M1, drawer: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == UINavigationItem, M2.MatchedType == IPRightMenuVC {
	        let matchers: [Cuckoo.ParameterMatcher<(UINavigationItem, IPRightMenuVC)>] = [wrap(matchable: navItem) { $0.0 }, wrap(matchable: drawer) { $0.1 }]
	        return cuckoo_manager.verify("setupHamburgerButton(_: UINavigationItem, drawer: IPRightMenuVC)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class IPNavigationBarHelperStub: IPNavigationBarHelper {
    

    

    
    public override func applyStyle(_ navBar: UINavigationBar)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
    public override func setupHamburgerButton(_ navItem: UINavigationItem, drawer: IPRightMenuVC)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: VKClient/Screens/RightMenu/IPRightMenuVC.swift at 2018-07-06 07:38:10 +0000

//
//  IPRightMenuVC.swift
//  VKClient
//
//  Created by Tester on 6/26/18.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import Cuckoo
@testable import VKClient

import MMDrawerController
import UIKit

class MockIPRightMenuVC: IPRightMenuVC, Cuckoo.ClassMock {
    typealias MocksType = IPRightMenuVC
    typealias Stubbing = __StubbingProxy_IPRightMenuVC
    typealias Verification = __VerificationProxy_IPRightMenuVC
    let cuckoo_manager = Cuckoo.MockManager(hasParent: true)

    

    

    
    // ["name": "viewDidLoad", "returnSignature": "", "fullyQualifiedName": "viewDidLoad()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func viewDidLoad()  {
        
            return cuckoo_manager.call("viewDidLoad()",
                parameters: (),
                superclassCall:
                    
                    super.viewDidLoad()
                    )
        
    }
    
    // ["name": "viewWillAppear", "returnSignature": "", "fullyQualifiedName": "viewWillAppear(_: Bool)", "parameterSignature": "_ animated: Bool", "parameterSignatureWithoutNames": "animated: Bool", "inputTypes": "Bool", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "animated", "call": "animated", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "animated", type: "Bool", range: CountableRange(1322..<1338), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func viewWillAppear(_ animated: Bool)  {
        
            return cuckoo_manager.call("viewWillAppear(_: Bool)",
                parameters: (animated),
                superclassCall:
                    
                    super.viewWillAppear(animated)
                    )
        
    }
    
    // ["name": "didReceiveMemoryWarning", "returnSignature": "", "fullyQualifiedName": "didReceiveMemoryWarning()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func didReceiveMemoryWarning()  {
        
            return cuckoo_manager.call("didReceiveMemoryWarning()",
                parameters: (),
                superclassCall:
                    
                    super.didReceiveMemoryWarning()
                    )
        
    }
    
    // ["name": "changeCenter", "returnSignature": "", "fullyQualifiedName": "changeCenter(_: UIStoryboard)", "parameterSignature": "_ storyboard: UIStoryboard", "parameterSignatureWithoutNames": "storyboard: UIStoryboard", "inputTypes": "UIStoryboard", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "storyboard", "call": "storyboard", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "storyboard", type: "UIStoryboard", range: CountableRange(1503..<1529), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func changeCenter(_ storyboard: UIStoryboard)  {
        
            return cuckoo_manager.call("changeCenter(_: UIStoryboard)",
                parameters: (storyboard),
                superclassCall:
                    
                    super.changeCenter(storyboard)
                    )
        
    }
    

	struct __StubbingProxy_IPRightMenuVC: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func viewDidLoad() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockIPRightMenuVC.self, method: "viewDidLoad()", parameterMatchers: matchers))
	    }
	    
	    func viewWillAppear<M1: Cuckoo.Matchable>(_ animated: M1) -> Cuckoo.ClassStubNoReturnFunction<(Bool)> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: animated) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockIPRightMenuVC.self, method: "viewWillAppear(_: Bool)", parameterMatchers: matchers))
	    }
	    
	    func didReceiveMemoryWarning() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockIPRightMenuVC.self, method: "didReceiveMemoryWarning()", parameterMatchers: matchers))
	    }
	    
	    func changeCenter<M1: Cuckoo.Matchable>(_ storyboard: M1) -> Cuckoo.ClassStubNoReturnFunction<(UIStoryboard)> where M1.MatchedType == UIStoryboard {
	        let matchers: [Cuckoo.ParameterMatcher<(UIStoryboard)>] = [wrap(matchable: storyboard) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockIPRightMenuVC.self, method: "changeCenter(_: UIStoryboard)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_IPRightMenuVC: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func viewDidLoad() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func viewWillAppear<M1: Cuckoo.Matchable>(_ animated: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: animated) { $0 }]
	        return cuckoo_manager.verify("viewWillAppear(_: Bool)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didReceiveMemoryWarning() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didReceiveMemoryWarning()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func changeCenter<M1: Cuckoo.Matchable>(_ storyboard: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == UIStoryboard {
	        let matchers: [Cuckoo.ParameterMatcher<(UIStoryboard)>] = [wrap(matchable: storyboard) { $0 }]
	        return cuckoo_manager.verify("changeCenter(_: UIStoryboard)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class IPRightMenuVCStub: IPRightMenuVC {
    

    

    
     override func viewDidLoad()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func viewWillAppear(_ animated: Bool)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func didReceiveMemoryWarning()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func changeCenter(_ storyboard: UIStoryboard)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: VKClient/Views/Friends/IPFriendCell.swift at 2018-07-06 07:38:10 +0000

//
//  IPFriendCell.swift
//  VKClient
//
//  Created by Игорь Пак on 28/06/2018.
//  Copyright © 2018 Igor Pak. All rights reser
import Cuckoo
@testable import VKClient

import ChameleonFramework
import MagicalRecord
import SDWebImage
import UIKit

class MockIPFriendCell: IPFriendCell, Cuckoo.ClassMock {
    typealias MocksType = IPFriendCell
    typealias Stubbing = __StubbingProxy_IPFriendCell
    typealias Verification = __VerificationProxy_IPFriendCell
    let cuckoo_manager = Cuckoo.MockManager(hasParent: true)

    
    // ["name": "friendImageView", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "UIImageView!", "isReadOnly": false, "accessibility": ""]
     override var friendImageView: UIImageView! {
        get {
            
            return cuckoo_manager.getter("friendImageView", superclassCall: super.friendImageView)
            
        }
        
        set {
            
            cuckoo_manager.setter("friendImageView", value: newValue, superclassCall: super.friendImageView = newValue)
            
        }
        
    }
    
    // ["name": "friendNameLabel", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "UILabel!", "isReadOnly": false, "accessibility": ""]
     override var friendNameLabel: UILabel! {
        get {
            
            return cuckoo_manager.getter("friendNameLabel", superclassCall: super.friendNameLabel)
            
        }
        
        set {
            
            cuckoo_manager.setter("friendNameLabel", value: newValue, superclassCall: super.friendNameLabel = newValue)
            
        }
        
    }
    
    // ["name": "statusOnlineView", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "UIView!", "isReadOnly": false, "accessibility": ""]
     override var statusOnlineView: UIView! {
        get {
            
            return cuckoo_manager.getter("statusOnlineView", superclassCall: super.statusOnlineView)
            
        }
        
        set {
            
            cuckoo_manager.setter("statusOnlineView", value: newValue, superclassCall: super.statusOnlineView = newValue)
            
        }
        
    }
    
    // ["name": "statusLabel", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "UILabel!", "isReadOnly": false, "accessibility": ""]
     override var statusLabel: UILabel! {
        get {
            
            return cuckoo_manager.getter("statusLabel", superclassCall: super.statusLabel)
            
        }
        
        set {
            
            cuckoo_manager.setter("statusLabel", value: newValue, superclassCall: super.statusLabel = newValue)
            
        }
        
    }
    

    

    
    // ["name": "awakeFromNib", "returnSignature": "", "fullyQualifiedName": "awakeFromNib()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func awakeFromNib()  {
        
            return cuckoo_manager.call("awakeFromNib()",
                parameters: (),
                superclassCall:
                    
                    super.awakeFromNib()
                    )
        
    }
    
    // ["name": "configure", "returnSignature": "", "fullyQualifiedName": "configure(_: IPVKFriends)", "parameterSignature": "_ friend: IPVKFriends", "parameterSignatureWithoutNames": "friend: IPVKFriends", "inputTypes": "IPVKFriends", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "public", "parameterNames": "friend", "call": "friend", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "friend", type: "IPVKFriends", range: CountableRange(567..<588), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
    public override func configure(_ friend: IPVKFriends)  {
        
            return cuckoo_manager.call("configure(_: IPVKFriends)",
                parameters: (friend),
                superclassCall:
                    
                    super.configure(friend)
                    )
        
    }
    
    // ["name": "setSelected", "returnSignature": "", "fullyQualifiedName": "setSelected(_: Bool, animated: Bool)", "parameterSignature": "_ selected: Bool, animated: Bool", "parameterSignatureWithoutNames": "selected: Bool, animated: Bool", "inputTypes": "Bool, Bool", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "selected, animated", "call": "selected, animated: animated", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "selected", type: "Bool", range: CountableRange(1554..<1570), nameRange: CountableRange(0..<0)), CuckooGeneratorFramework.MethodParameter(label: Optional("animated"), name: "animated", type: "Bool", range: CountableRange(1572..<1586), nameRange: CountableRange(1572..<1580))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func setSelected(_ selected: Bool, animated: Bool)  {
        
            return cuckoo_manager.call("setSelected(_: Bool, animated: Bool)",
                parameters: (selected, animated),
                superclassCall:
                    
                    super.setSelected(selected, animated: animated)
                    )
        
    }
    

	struct __StubbingProxy_IPFriendCell: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    var friendImageView: Cuckoo.ClassToBeStubbedProperty<MockIPFriendCell, UIImageView?> {
	        return .init(manager: cuckoo_manager, name: "friendImageView")
	    }
	    
	    var friendNameLabel: Cuckoo.ClassToBeStubbedProperty<MockIPFriendCell, UILabel?> {
	        return .init(manager: cuckoo_manager, name: "friendNameLabel")
	    }
	    
	    var statusOnlineView: Cuckoo.ClassToBeStubbedProperty<MockIPFriendCell, UIView?> {
	        return .init(manager: cuckoo_manager, name: "statusOnlineView")
	    }
	    
	    var statusLabel: Cuckoo.ClassToBeStubbedProperty<MockIPFriendCell, UILabel?> {
	        return .init(manager: cuckoo_manager, name: "statusLabel")
	    }
	    
	    
	    func awakeFromNib() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockIPFriendCell.self, method: "awakeFromNib()", parameterMatchers: matchers))
	    }
	    
	    func configure<M1: Cuckoo.Matchable>(_ friend: M1) -> Cuckoo.ClassStubNoReturnFunction<(IPVKFriends)> where M1.MatchedType == IPVKFriends {
	        let matchers: [Cuckoo.ParameterMatcher<(IPVKFriends)>] = [wrap(matchable: friend) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockIPFriendCell.self, method: "configure(_: IPVKFriends)", parameterMatchers: matchers))
	    }
	    
	    func setSelected<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ selected: M1, animated: M2) -> Cuckoo.ClassStubNoReturnFunction<(Bool, Bool)> where M1.MatchedType == Bool, M2.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool, Bool)>] = [wrap(matchable: selected) { $0.0 }, wrap(matchable: animated) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockIPFriendCell.self, method: "setSelected(_: Bool, animated: Bool)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_IPFriendCell: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    var friendImageView: Cuckoo.VerifyProperty<UIImageView?> {
	        return .init(manager: cuckoo_manager, name: "friendImageView", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var friendNameLabel: Cuckoo.VerifyProperty<UILabel?> {
	        return .init(manager: cuckoo_manager, name: "friendNameLabel", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var statusOnlineView: Cuckoo.VerifyProperty<UIView?> {
	        return .init(manager: cuckoo_manager, name: "statusOnlineView", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var statusLabel: Cuckoo.VerifyProperty<UILabel?> {
	        return .init(manager: cuckoo_manager, name: "statusLabel", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func awakeFromNib() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("awakeFromNib()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func configure<M1: Cuckoo.Matchable>(_ friend: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == IPVKFriends {
	        let matchers: [Cuckoo.ParameterMatcher<(IPVKFriends)>] = [wrap(matchable: friend) { $0 }]
	        return cuckoo_manager.verify("configure(_: IPVKFriends)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func setSelected<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ selected: M1, animated: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Bool, M2.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool, Bool)>] = [wrap(matchable: selected) { $0.0 }, wrap(matchable: animated) { $0.1 }]
	        return cuckoo_manager.verify("setSelected(_: Bool, animated: Bool)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class IPFriendCellStub: IPFriendCell {
    
     override var friendImageView: UIImageView! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIImageView!).self)
        }
        
        set { }
        
    }
    
     override var friendNameLabel: UILabel! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UILabel!).self)
        }
        
        set { }
        
    }
    
     override var statusOnlineView: UIView! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIView!).self)
        }
        
        set { }
        
    }
    
     override var statusLabel: UILabel! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UILabel!).self)
        }
        
        set { }
        
    }
    

    

    
     override func awakeFromNib()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
    public override func configure(_ friend: IPVKFriends)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func setSelected(_ selected: Bool, animated: Bool)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: VKClient/Views/Profile/IPProfileHeaderCell.swift at 2018-07-06 07:38:10 +0000

//
//  IPProfileHeaderCell.swift
//  VKClient
//
//  Created by Игорь Пак on 30/05/2018.
//  Copyright © 2018 Igor Pak. All rights reser
import Cuckoo
@testable import VKClient

import SDWebImage
import UIKit

class MockIPProfileHeaderCell: IPProfileHeaderCell, Cuckoo.ClassMock {
    typealias MocksType = IPProfileHeaderCell
    typealias Stubbing = __StubbingProxy_IPProfileHeaderCell
    typealias Verification = __VerificationProxy_IPProfileHeaderCell
    let cuckoo_manager = Cuckoo.MockManager(hasParent: true)

    
    // ["name": "avatarImageView", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "UIImageView!", "isReadOnly": false, "accessibility": ""]
     override var avatarImageView: UIImageView! {
        get {
            
            return cuckoo_manager.getter("avatarImageView", superclassCall: super.avatarImageView)
            
        }
        
        set {
            
            cuckoo_manager.setter("avatarImageView", value: newValue, superclassCall: super.avatarImageView = newValue)
            
        }
        
    }
    
    // ["name": "nameLabel", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "UILabel!", "isReadOnly": false, "accessibility": ""]
     override var nameLabel: UILabel! {
        get {
            
            return cuckoo_manager.getter("nameLabel", superclassCall: super.nameLabel)
            
        }
        
        set {
            
            cuckoo_manager.setter("nameLabel", value: newValue, superclassCall: super.nameLabel = newValue)
            
        }
        
    }
    
    // ["name": "statusLabel", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "UILabel!", "isReadOnly": false, "accessibility": ""]
     override var statusLabel: UILabel! {
        get {
            
            return cuckoo_manager.getter("statusLabel", superclassCall: super.statusLabel)
            
        }
        
        set {
            
            cuckoo_manager.setter("statusLabel", value: newValue, superclassCall: super.statusLabel = newValue)
            
        }
        
    }
    

    

    
    // ["name": "awakeFromNib", "returnSignature": "", "fullyQualifiedName": "awakeFromNib()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func awakeFromNib()  {
        
            return cuckoo_manager.call("awakeFromNib()",
                parameters: (),
                superclassCall:
                    
                    super.awakeFromNib()
                    )
        
    }
    
    // ["name": "setSelected", "returnSignature": "", "fullyQualifiedName": "setSelected(_: Bool, animated: Bool)", "parameterSignature": "_ selected: Bool, animated: Bool", "parameterSignatureWithoutNames": "selected: Bool, animated: Bool", "inputTypes": "Bool, Bool", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "selected, animated", "call": "selected, animated: animated", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "selected", type: "Bool", range: CountableRange(575..<591), nameRange: CountableRange(0..<0)), CuckooGeneratorFramework.MethodParameter(label: Optional("animated"), name: "animated", type: "Bool", range: CountableRange(593..<607), nameRange: CountableRange(593..<601))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func setSelected(_ selected: Bool, animated: Bool)  {
        
            return cuckoo_manager.call("setSelected(_: Bool, animated: Bool)",
                parameters: (selected, animated),
                superclassCall:
                    
                    super.setSelected(selected, animated: animated)
                    )
        
    }
    
    // ["name": "configure", "returnSignature": "", "fullyQualifiedName": "configure()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "public", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
    public override func configure()  {
        
            return cuckoo_manager.call("configure()",
                parameters: (),
                superclassCall:
                    
                    super.configure()
                    )
        
    }
    

	struct __StubbingProxy_IPProfileHeaderCell: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    var avatarImageView: Cuckoo.ClassToBeStubbedProperty<MockIPProfileHeaderCell, UIImageView?> {
	        return .init(manager: cuckoo_manager, name: "avatarImageView")
	    }
	    
	    var nameLabel: Cuckoo.ClassToBeStubbedProperty<MockIPProfileHeaderCell, UILabel?> {
	        return .init(manager: cuckoo_manager, name: "nameLabel")
	    }
	    
	    var statusLabel: Cuckoo.ClassToBeStubbedProperty<MockIPProfileHeaderCell, UILabel?> {
	        return .init(manager: cuckoo_manager, name: "statusLabel")
	    }
	    
	    
	    func awakeFromNib() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockIPProfileHeaderCell.self, method: "awakeFromNib()", parameterMatchers: matchers))
	    }
	    
	    func setSelected<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ selected: M1, animated: M2) -> Cuckoo.ClassStubNoReturnFunction<(Bool, Bool)> where M1.MatchedType == Bool, M2.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool, Bool)>] = [wrap(matchable: selected) { $0.0 }, wrap(matchable: animated) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockIPProfileHeaderCell.self, method: "setSelected(_: Bool, animated: Bool)", parameterMatchers: matchers))
	    }
	    
	    func configure() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockIPProfileHeaderCell.self, method: "configure()", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_IPProfileHeaderCell: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    var avatarImageView: Cuckoo.VerifyProperty<UIImageView?> {
	        return .init(manager: cuckoo_manager, name: "avatarImageView", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var nameLabel: Cuckoo.VerifyProperty<UILabel?> {
	        return .init(manager: cuckoo_manager, name: "nameLabel", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var statusLabel: Cuckoo.VerifyProperty<UILabel?> {
	        return .init(manager: cuckoo_manager, name: "statusLabel", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func awakeFromNib() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("awakeFromNib()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func setSelected<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ selected: M1, animated: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Bool, M2.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool, Bool)>] = [wrap(matchable: selected) { $0.0 }, wrap(matchable: animated) { $0.1 }]
	        return cuckoo_manager.verify("setSelected(_: Bool, animated: Bool)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func configure() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("configure()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class IPProfileHeaderCellStub: IPProfileHeaderCell {
    
     override var avatarImageView: UIImageView! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIImageView!).self)
        }
        
        set { }
        
    }
    
     override var nameLabel: UILabel! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UILabel!).self)
        }
        
        set { }
        
    }
    
     override var statusLabel: UILabel! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UILabel!).self)
        }
        
        set { }
        
    }
    

    

    
     override func awakeFromNib()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func setSelected(_ selected: Bool, animated: Bool)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
    public override func configure()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}

