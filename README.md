# FoundationKit

Framework de utilidades compartidas, extensiones y lógica común.  
Complementa a `SecurityKit` proveyendo validaciones, helpers y formato de datos seguro.

---

## Propósito

Centralizar herramientas auxiliares para evitar duplicación de lógica transversal y apoyar operaciones seguras y robustas.

---

## Contenido

- Extensiones de tipos estándar (Date, String, Optional, etc.)
- Validadores de entrada reutilizables
- Formateadores y helpers para manipulación segura
- Manejadores de errores y recursos compartidos

---

## Ejemplo

```swift
let isValid = "correo@example.com".isValidEmail()
let formatted = "2025-05-01".asDate()?.formatted()
```

---

## Integración con Seguridad

`FoundationKit` se complementa con `SecurityKit` al asegurar consistencia en datos, validaciones seguras y formato previo a operaciones criptográficas.
