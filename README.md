# FoundationKit

**Lógica transversal, validaciones reutilizables y estructuras comunes para proyectos iOS modulares.**

`FoundationKit` centraliza componentes fundamentales que se integran en múltiples módulos del sistema —desde validación de datos y extensiones de utilidad, hasta convenciones técnicas compartidas. Su objetivo es facilitar un desarrollo claro, mantenible y predecible.

---

## Propósito

- Unificar lógica transversal en un solo módulo.
- Reducir duplicación de código y aumentar la coherencia del sistema.
- Aplicar patrones comunes para desarrollo sostenible.
- Establecer contratos reutilizables de pruebas.

---

## Contenido

- Extensiones para `String`, `Date`, `URL`.
- Validadores reutilizables para formularios y entradas.
- Helpers para fechas, errores comunes, logging.
- Protocolo estandarizado de errores.
- Convenciones para entornos dev y producción.

---

## Enfoque de pruebas

| Componente       | Tipo de prueba              |
|------------------|-----------------------------|
| Validadores      | Unitarias                   |
| Extensiones      | Unitarias                   |
| Helpers          | Bordes + rendimiento        |
| Errores comunes  | Cobertura de estados        |

```swift
func testEmailValidator_WhenValidEmail_ReturnsTrue() {
    let result = EmailValidator.isValid("correo@example.com")
    XCTAssertTrue(result)
}
```

---

## Integración

| Framework        | Uso principal                            |
|------------------|------------------------------------------|
| InterfaceKit     | Validadores, helpers de fecha            |
| MotionKit        | Utilidades de tiempo e input             |
| SecurityKit      | Validación segura, manejo de errores     |
| UXBlueprints     | Extensiones visuales                     |

---

## Requisitos

- iOS 15+
- Swift 6
- Swift Package Manager

---

## Licencia

MIT © Matías Adrián Molina


