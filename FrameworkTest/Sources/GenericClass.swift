//
//  GenericClass.swift
//  FrameworkTest
//
//  Created by Nassim BEN YAAGOUB on 29/03/2019.
//  Copyright © 2019 com.nass.Test. All rights reserved.
//

import Foundation

/// A generic class.
open class GenericClass<Model> {

    /// A method with a generic model and an instance of an internal class.
    ///
    /// - Parameters:
    ///   - someModel: The generic model.
    ///   - someInternalInstance: The internal class instance.
    internal func performAction(someModel: Model, someInternalInstance: InternalClass) {
        print("internal action")

    }

    /// A public method with a generic model.
    ///
    /// - Parameter someModel: The generic model.
    public func publicMethod(someModel: Model) {
        print("public method")
    }

}
