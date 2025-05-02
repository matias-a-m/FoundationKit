# FoundationKit

Framework de utilidades compartidas, extensiones y lógica común.

---

## Propósito

Centralizar herramientas auxiliares para evitar duplicación de lógica transversal.

---

## Contenido

- Extensiones de tipos estándar (Date, String, etc.)
- Validadores, formateadores, helpers
- Manejadores de errores, constantes y recursos compartidos
- Observadores y utilidades de debug

---

## Ejemplo

```swift
let formatted = "2025-05-01".asDate()?.formatted()
```

---

## Filosofía

- Zero-dependency
- Modular, reusable, simple
