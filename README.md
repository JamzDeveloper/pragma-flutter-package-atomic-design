# design_system_package

Un sistema de diseño modular para Flutter, basado en los principios de **Atomic Design**, que proporciona componentes reutilizables y consistentes para acelerar el desarrollo de interfaces de usuario.

## ✨ Características

- Arquitectura clara basada en **Atomic Design** (Átomos, Moléculas, Organismos, Plantillas y Páginas).
- Componentes reutilizables, estilizados y fáciles de mantener.
- Integración sencilla en cualquier proyecto Flutter.
- Showcase incluido como ejemplo de uso real.

---

## 📦 Estructura del paquete

```bash
lib/
├── atoms/           # Componentes más básicos
├── molecules/       # Composición de átomos
├── organisms/       # Secciones de interfaz completas
├── templates/       # Estructuras generales
├── design_system_package.dart
```
## 📁 Componentes incluidos

# 🔹 Átomos (lib/atoms/)
- CustomText – Texto con estilo definido.
- CustomDivider – Línea separadora personalizada.
- CustomIcon – Icono adaptable.
- CustomSpacer – Espaciador reutilizable.
- CustomColorPalette – Paleta de colores centralizada.
- CustomTypography – Estilos tipográficos reutilizables.


# 🔸 Moléculas (lib/molecules/)
- CustomLabelInput – Input con etiqueta.
- CustomButtonIcon – Botón con icono integrado.
- CustomTextIcon – Texto acompañado de icono.
# 🔷 Organismos (lib/organisms/)
- UserCard – Tarjeta de usuario con avatar, nombre y email.
- ProductItem – Componente para mostrar producto.
- CartSummary – Resumen del carrito con lista y total.
# 🧩 Templates (lib/templates/)
- UserProfileTemplateBody – Plantilla de perfil de usuario.
- ProductTemplateBody – Plantilla de visualización de producto.
- CartTemplateBody – Plantilla para carrito de compras.

## 🚀 Cómo usar

# Instalación
```bash
flutter pub add design_system_package
```
# Importación en tu proyecto

```bash
import 'package:design_system_package/design_system_package.dart';
```
# Uso de componentes

```bash
CustomLabelInput(
  label: 'Nombre',
  hintText: 'Ingresa tu nombre',
  controller: TextEditingController(),
);
```

# 🧪 Ejemplo tipo Showcase

Incluye un ejemplo (example/) que muestra todos los niveles del sistema de diseño (átomos, moléculas, organismos, plantillas y páginas), con navegación por pestañas.

Puedes ejecutarlo con:

```bash
cd example
flutter run
```