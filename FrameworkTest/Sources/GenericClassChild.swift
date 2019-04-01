//
//  GenericClassChild.swift
//  FrameworkTest
//
//  Created by Nassim BEN YAAGOUB on 29/03/2019.
//  Copyright © 2019 com.nass.Test. All rights reserved.
//

import Foundation

/// A sub generic class of GenericClass.
open class GenericClassChild<Model>: GenericClass<Model> {

    /// A method with a generic model and an instance of an internal class.
    ///
    /// The linker cannot find the symbol of this method and the fail build
    /// occurs here.
    ///
    /// Removing the `final` mark or make it public doesn't trigger the build error.
    /// - Parameters:
    ///   - someModel: The generic model.
    ///   - someInternalInstance: The internal class instance.
    internal override final func performAction(someModel: Model, someInternalInstance: InternalClass) {
        print("internal override action")
    }

    /// A public method with a generic model.
    ///
    /// No build errors occurs here.
    /// - Parameter someModel: The model.
    public override final func publicMethod(someModel: Model) {
        print("public override method")
    }

}
