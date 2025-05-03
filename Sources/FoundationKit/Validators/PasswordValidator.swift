import Foundation

public enum PasswordStrength {
    case weak, medium, strong
}

/// Validador de contraseñas según patrones comunes
public struct PasswordValidator {
    public static func strength(of password: String) -> PasswordStrength {
        let length = password.count
        let hasUpper = password.range(of: "[A-Z]", options: .regularExpression) != nil
        let hasLower = password.range(of: "[a-z]", options: .regularExpression) != nil
        let hasDigit = password.range(of: "\\d", options: .regularExpression) != nil
        let hasSymbol = password.range(of: "[^A-Za-z0-9]", options: .regularExpression) != nil

        if length >= 12 && hasUpper && hasLower && hasDigit && hasSymbol {
            return .strong
        } else if length >= 8 && (hasUpper || hasLower) && (hasDigit || hasSymbol) {
            return .medium
        } else {
            return .weak
        }
    }
}
