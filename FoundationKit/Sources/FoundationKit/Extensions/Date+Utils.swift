import Foundation

/// Extensiones para manejo semántico de fechas
public extension Date {
    func formattedString(using format: String = "yyyy-MM-dd") -> String {
        DateFormatterProvider.shared.format(for: format).string(from: self)
    }
}
