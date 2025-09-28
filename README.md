# 🔧⚡📸 Fluitronic - Suite de Herramientas Técnicas

[![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-Active-green)](https://moicano-uni.github.io/Fluitronic)
[![HTML5](https://img.shields.io/badge/HTML5-E34F26?logo=html5&logoColor=white)](https://developer.mozilla.org/en-US/docs/Web/HTML)
[![CSS3](https://img.shields.io/badge/CSS3-1572B6?logo=css3&logoColor=white)](https://developer.mozilla.org/en-US/docs/Web/CSS)
[![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?logo=javascript&logoColor=black)](https://developer.mozilla.org/en-US/docs/Web/JavaScript)

Suite completa de herramientas digitales para trabajos técnicos, gestión de herramientas y cotización inteligente con IA.

## 🚀 Demo en Vivo
👉 **[Acceder a la aplicación](https://moicano-uni.github.io/Fluitronic)**

## 📱 Aplicaciones Incluidas

### 🔧 Formato de Trabajo Técnico
- ✅ **6 secciones especializadas:** Seguridad, Desmontaje, Antena, Alimentación, Soporte, Validación
- ✅ **Campos dinámicos:** Agregar/quitar filas según necesidad
- ✅ **Guardado inteligente:** Solo guarda campos con contenido
- ✅ **Exportación PDF** profesional
- ✅ **Guardado en Google Drive** automático
- ✅ **Responsive** para móviles y tablets

### 📦 Requerimientos de Herramientas
- ✅ **Control de inventario** completo
- ✅ **Estados de disponibilidad** y entrega
- ✅ **Cantidades personalizables**
- ✅ **Doble firma** (solicitante + técnico)
- ✅ **Filas dinámicas** expandibles
- ✅ **Exportación estructurada**

### 📸 Cotizador Inteligente *(NUEVO)*
- 🤖 **Análisis de imagen con IA**
- 🏪 **Cotizaciones automáticas** en Lima, Perú
- 📍 **Ubicaciones de tiendas** (Sodimac, Promart, Maestro)
- 📊 **Especificaciones técnicas** detalladas
- 📈 **Guardado en Google Sheets**
- 📱 **Cámara integrada** para móviles
- 🎯 **Drag & Drop** para escritorio

## 🌟 Características Principales

- 🌐 **Progressive Web App** - Funciona offline
- 📱 **Diseño Responsive** - Optimizado para todos los dispositivos  
- ⚡ **Carga instantánea** - Sin dependencias externas
- 🎨 **UI/UX moderna** - Interfaz intuitiva y profesional
- 💾 **Múltiples formatos** de exportación (PDF, TXT, Sheets)
- 🔄 **Sincronización** con Google Drive y Sheets
- 🛡️ **Seguro** - Datos procesados localmente

## 🛠️ Tecnologías

- **Frontend:** HTML5, CSS3, JavaScript ES6+
- **Styling:** CSS Grid, Flexbox, Custom Properties
- **APIs:** Google Vision AI, Google Sheets API
- **Hosting:** GitHub Pages
- **PWA:** Service Workers, Web App Manifest

## 🚀 Instalación Local

```bash
# Clonar el repositorio
git clone https://github.com/moicano-uni/Fluitronic.git

# Entrar al directorio
cd Fluitronic

# Abrir con Live Server o servir estáticamente
# No requiere instalación de dependencias
```

## 📂 Estructura del Proyecto

```
Fluitronic/
├── index.html                          # Página principal
├── formato-trabajo.html               # Formato de trabajo técnico
├── requerimientos-herramientas.html   # Gestión de herramientas  
├── cotizador.html                     # Cotizador inteligente
├── config.js                         # Configuración de APIs
└── README.md                         # Documentación
```

## ⚙️ Configuración de APIs

### Para funcionalidad completa del Cotizador:

1. **Google Vision API**
   ```javascript
   // En config.js
   GOOGLE_VISION_API_KEY: 'your-api-key'
   ```

2. **Google Sheets API**
   ```javascript
   // En config.js
   GOOGLE_SHEETS_SPREADSHEET_ID: 'your-sheet-id'
   ```

## 📈 Funcionalidades del Cotizador

### 🔍 Análisis de Imagen
- Identificación automática de componentes eléctricos
- Reconocimiento de especificaciones técnicas
- Detección de marca y modelo

### 💰 Sistema de Cotización
- Precios actualizados de tiendas peruanas
- Comparación automática de precios
- Información de disponibilidad
- Ubicaciones y contactos de tiendas

### 📊 Base de Datos
- Guardado automático en Google Sheets
- Historial de cotizaciones
- Análisis de tendencias de precios
- Exportación de reportes

## 🎯 Casos de Uso

- **Técnicos eléctricos** - Control de trabajos y cotizaciones
- **Empresas de telecomunicaciones** - Gestión de proyectos
- **Ingenieros de campo** - Documentación profesional
- **Equipos de mantenimiento** - Control de herramientas
- **Compradores técnicos** - Comparación de precios

## 🤝 Contribuir

1. Fork el proyecto
2. Crea una branch (`git checkout -b feature/nueva-funcionalidad`)
3. Commit tus cambios (`git commit -m 'Añadir nueva funcionalidad'`)
4. Push a la branch (`git push origin feature/nueva-funcionalidad`)
5. Abre un Pull Request

## 📄 Licencia

Este proyecto está bajo la Licencia MIT - ver el archivo [LICENSE](LICENSE) para detalles.

## 👨‍💻 Autor

**Moicano-uni**
- GitHub: [@moicano-uni](https://github.com/moicano-uni)

## 🙏 Agradecimientos

- Comunidad de desarrolladores peruanos
- APIs de Google Cloud Platform
- Tiendas peruanas por la información de precios

---

⭐ **¡Dale una estrella si te gustó el proyecto!** ⭐
