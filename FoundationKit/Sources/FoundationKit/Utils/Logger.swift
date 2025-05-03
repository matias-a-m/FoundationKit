import Foundation

/// Logger con contexto semántico y control de nivel de log
public enum Logger {
    public static var isEnabled = true

    public static func log(_ message: String, level: LogLevel = .info, file: String = #file, function: String = #function) {
        guard isEnabled else { return }
        #if DEBUG
        let fileName = (file as NSString).lastPathComponent
        print("[\(level.rawValue.uppercased())] [\(fileName):\(function)] \(message)")
        #endif
    }

    public enum LogLevel: String {
        case info, warning, error
    }
}
