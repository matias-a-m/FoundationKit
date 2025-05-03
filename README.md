# FoundationKit

Framework base de lógica transversal para sistemas modulares iOS.  
Diseñado bajo principios de sostenibilidad, claridad técnica y experiencia nativa.

---

## Propósito

`FoundationKit` abstrae utilidades esenciales y patrones comunes del desarrollo iOS.  
Su objetivo es reducir la fricción, estandarizar comportamientos y facilitar el mantenimiento de aplicaciones reales.

Cada componente está pensado para aportar consistencia, legibilidad y robustez, alineándose con una visión de producto modular, seguro y escalable.

---

## Contenido

| Categoría       | Componente                 | Descripción                                               |
|----------------|----------------------------|-----------------------------------------------------------|
| Validaciones   | `EmailValidator`           | Evalúa formato y semántica de emails                      |
|                | `PasswordValidator`        | Evalúa fuerza de contraseñas                              |
| Logging        | `Logger`                   | Log con niveles, contexto automático y control global     |
| Formateo       | `DateFormatterProvider`    | Cache de `DateFormatter` optimizado                      |
| Extensiones    | `Date+Utils`               | Formato personalizado de fechas                          |
| Errores        | `AppError`                 | Modelo unificado de errores semánticos                   |

---

## Ejemplos de uso

```swift
import FoundationKit

Logger.log("Inicio de sesión exitoso")

if EmailValidator.isValid("user@example.com") {
    Logger.log("Email válido")
} else {
    Logger.log("Email inválido", level: .warning)
}

let passwordStrength = PasswordValidator.strength(of: "A1b2C3!@#")
Logger.log("Fuerza de contraseña: \(passwordStrength)")

let fecha = Date().formattedString(using: "dd/MM/yyyy")
Logger.log("Fecha: \(fecha)")
```

---

## Integración

`FoundationKit` está disponible como Swift Package.

**Xcode:**  
`File > Add Packages > https://github.com/matias-a-m/FoundationKit`

**Package.swift:**
```swift
.package(url: "https://github.com/matias-a-m/FoundationKit", from: "1.0.0")
```

---

## Pruebas

Incluye pruebas unitarias con `XCTest`:

- `EmailValidatorTests`
- `PasswordValidatorTests`
- `LoggerTests`

---

## Requisitos

- iOS 15+
- Swift 6
- Swift Package Manager

---

## Visión

Este framework se construye como base técnica sostenible para apps iOS que priorizan:
- claridad en el diseño de código,
- escalabilidad modular,
- y experiencia de usuario nativa con foco en producto.

Forma parte del ecosistema modular de [Matías A. Molina](https://matias-a-m.github.io/site/index.html)

---
