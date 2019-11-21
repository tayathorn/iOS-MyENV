import Foundation

enum Environment: String {
    case greetingMessage
    case api
    
    private static let infoDictionary = Bundle.main.infoDictionary
    
    func value() -> String {
        guard let value = Environment.infoDictionary?[rawValue] as? String else {
            return "KEY: '\(rawValue)' is not found in info.plist"
        }
        
        return value
    }
}
