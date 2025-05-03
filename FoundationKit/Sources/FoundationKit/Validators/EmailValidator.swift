import Foundation

/// Resultado semántico para validaciones de email
public enum EmailValidationResult {
    case valid
    case invalid(reason: String)
}

/// Validador simple de formato de email
public struct EmailValidator {
    public static func validate(_ email: String) -> EmailValidationResult {
        let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let isValid = NSPredicate(format: "SELF MATCHES %@", regex).evaluate(with: email)
        return isValid ? .valid : .invalid(reason: "Formato de email inválido")
    }

    public static func isValid(_ email: String) -> Bool {
        switch validate(email) {
        case .valid: return true
        case .invalid: return false
        }
    }
}
