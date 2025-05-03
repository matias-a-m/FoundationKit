import Foundation

/// Modelo base de errores semánticos para diagnóstico unificado
public enum AppError: Error, CustomStringConvertible {
    case invalidInput(reason: String)
    case network(description: String)
    case unknown

    public var description: String {
        switch self {
        case .invalidInput(let reason): return "Entrada inválida: \(reason)"
        case .network(let description): return "Error de red: \(description)"
        case .unknown: return "Error desconocido"
        }
    }
}
