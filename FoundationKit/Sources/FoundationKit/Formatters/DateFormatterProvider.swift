import Foundation

/// Proveedor de DateFormatters optimizado mediante cache
public final class DateFormatterProvider {
    public static let shared = DateFormatterProvider()
    private var cache = [String: DateFormatter]()

    private init() {}

    public func format(for pattern: String) -> DateFormatter {
        if let cached = cache[pattern] {
            return cached
        }
        let formatter = DateFormatter()
        formatter.dateFormat = pattern
        cache[pattern] = formatter
        return formatter
    }
}
