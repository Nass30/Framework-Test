//
//  GenericClassChild.swift
//  FrameworkTest
//
//  Created by Nassim BEN YAAGOUB on 29/03/2019.
//  Copyright © 2019 com.nass.Test. All rights reserved.
//

import Foundation

open class GenericClassChild<Model>: GenericClass<Model> {
    internal override final func performAction(someModel: Model, someInternalInstance: InternalClass) {
        print("internal override action")
    }
}
