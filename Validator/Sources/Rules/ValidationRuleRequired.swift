import Foundation

public struct ValidationRuleRequired<T>: ValidationRule {
    
    public let error: ValidationError
    
    public init(error: ValidationError) {
    
        self.error = error
    }
    
    public func validate(input: T?) -> Bool {
        if let input = input as? String {
            return input.count > 0
        }
        
        return input != nil
    }    
}
