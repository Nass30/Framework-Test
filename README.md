# Framework-Test

*This framework is used for a Carthage Issue with Xcode 10.2.*

A simple swift framework with a GenericClass, a GenericClassChild, a struct Model, and an InternalClass.
We have an internal function with an internal class and a generic model as paramaters in the GenericClass.

We next implement a GenericClassChild and override this function by adding a 'final' mark.

We next add this framework to an other [Framework](https://github.com/Nass30/Framework-Implementing-FrameworkTest) with 
Carthage and the build of the framework fails with this error :

**"Undefined symbols for architecture x86_64:
"FrameworkTest.GenericClassChild.performAction(someModel: A, someInternalInstance: FrameworkTest.InternalClass) -> ()", referenced from:
type metadata for FrameworkImplementingFrameworkTest.ClassImplementingGenericChildClass in ClassImplementingGenericChildClass.o
ld: symbol(s) not found for architecture x86_64
clang: error: linker command failed with exit code 1 (use -v to see invocation)"**


Hacks we have found so far :
The build succeed if :
- We remove 'final' mark
- We set the method as public

Environment test :
- Xcode 10.2 - Swift 5
- macOS Mojave 10.14.4
- Date : 01/04/2019
- Carthage version: Tested with Carthage 0.32.0 and [Carthage master](https://github.com/Carthage/Carthage/tree/f7f9bf1c019529ccffdf5bc9e2ec774f33c8f5e3)
