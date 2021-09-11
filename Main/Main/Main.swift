//
//  Main.swift
//  Main
//
//  Created by Shahrukh Alam on 11/09/21.
//

#if canImport(Feature)
import Feature
#endif

public struct Main {
    
    public init() {
        
    }
    
    public func printMe() {
#if canImport(Feature)
        print("Success in Main Target")
        _ = Feature()
#else
        print("Failed in Main Target")
#endif
    }
    
}
