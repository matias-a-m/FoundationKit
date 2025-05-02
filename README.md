# FoundationKit

**Lógica transversal, validaciones reutilizables y estructuras comunes para proyectos iOS modulares.**

`FoundationKit` centraliza componentes fundamentales que se integran en múltiples módulos del sistema —desde la validación de datos y extensiones de utilidad, hasta convenciones técnicas compartidas. Actúa como base coherente para escribir código más claro, mantenible y predecible en cualquier capa de producto.

---

## ✳️ Propósito

- Unificar la lógica transversal en un solo punto.
- Reducir duplicación de código en proyectos y frameworks.
- Aplicar patrones comunes que mejoran la consistencia del sistema.
- Establecer contratos de pruebas reutilizables.

---

## 📦 Contenido

- **Extensiones de tipo**: para `String`, `Date`, `URL`, etc.
- **Validadores**: campos de entrada, formatos, límites lógicos.
- **Helpers**: formatos de fecha, parseo, errores comunes.
- **Protocolo de errores estándar**: con representación user-friendly.
- **Convenciones de logging/debug** para entornos dev y producción.

---

## 🧪 Enfoque de pruebas

Desde el diseño, `FoundationKit` incluye pruebas automáticas para asegurar estabilidad y confianza en su uso:

| Componente              | Tipo de prueba                     |
|------------------------|------------------------------------|
| Validadores            | Unitarias                          |
| Extensiones            | Unitarias                          |
| Helpers de fecha       | Unitarias + pruebas de bordes      |
| Formateadores          | Tests de consistencia              |
| Errores comunes        | Cobertura de estados esperados     |

Las pruebas están escritas en XCTest, con foco en claridad, rendimiento y legibilidad.

```swift
// Ejemplo: test de validador de email
func testEmailValidator_WhenValidEmail_ReturnsTrue() {
    let result = EmailValidator.isValid("correo@example.com")
    XCTAssertTrue(result)
}
```

---

## 📁 Estructura del módulo

```
FoundationKit/
├── Sources/
│   ├── FoundationKit/
│   │   ├── Extensions/
│   │   ├── Validators/
│   │   ├── Helpers/
│   │   └── Errors/
├── Tests/
│   └── FoundationKitTests/
│       ├── ValidatorsTests/
│       ├── HelpersTests/
│       └── ExtensionsTests/
```

---

## 🔗 Integración en el sistema

`FoundationKit` es consumido por los siguientes frameworks y módulos:

| Framework / Módulo     | Función de integración                          |
|------------------------|--------------------------------------------------|
| `InterfaceKit`         | Helpers de fecha, validadores para formularios  |
| `MotionKit`            | Utilidades para formateo de eventos interactivos|
| `SecurityKit`          | Validación de input seguro y manejo de errores  |
| `UXBlueprints`         | Extensiones de formato y datos simulados        |
| `ArchitectureBench`    | Modelos de ejemplo reutilizables                |

---

## ✅ Requisitos

- iOS 14+
- Swift 5.8+
- Swift Package Manager

---

##  Licencia

MIT © [Matías Adrián Molina](mailto:matias.a.molina87@icloud.com)
