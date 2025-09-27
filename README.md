# 🏭 Cotizador Automático Perú

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![React](https://img.shields.io/badge/React-18.0+-61DAFB?logo=react)](https://reactjs.org/)
[![Status](https://img.shields.io/badge/status-active-success.svg)]()
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)

Una aplicación web inteligente que permite obtener cotizaciones automáticas de productos industriales en Perú mediante el análisis de fotografías y especificaciones técnicas del usuario.

![Demo de la aplicación](docs/images/app-demo.gif)

## 🚀 Características

### 📸 Análisis Inteligente de Imágenes
- **Reconocimiento automático** de productos industriales
- **Detección múltiple** de productos en una sola imagen
- **Precisión mejorada** con descripción del usuario
- **Soporte para múltiples formatos** de imagen

### 💰 Cotización en Tiempo Real
- **Precios actualizados** del mercado peruano
- **Rangos de precios** según calidad y especificaciones
- **Ajuste automático** según medidas y materiales
- **Información de disponibilidad** y tiempos de entrega

### 🏪 Base de Datos de Proveedores
- **Tiendas verificadas** en Perú
- **Múltiples opciones** de compra por producto
- **Enlaces directos** para contacto o compra
- **Información de ubicación** y disponibilidad

### 📝 Especificaciones Detalladas
- **Formulario intuitivo** para describir medidas
- **Campos específicos** para uso y aplicación
- **Selección de materiales** preferidos
- **Información adicional** personalizable

## 🛠️ Tecnologías Utilizadas

- **Frontend**: React 18+ con Hooks
- **Estilos**: Tailwind CSS
- **Iconos**: Lucide React
- **Estado**: React State Management
- **Responsive**: Mobile-first design

## 📦 Instalación y Configuración

### Prerrequisitos

```bash
Node.js >= 16.0.0
npm >= 8.0.0
```

### Instalación

1. **Clonar el repositorio**
```bash
git clone https://github.com/tu-usuario/cotizador-automatico-peru.git
cd cotizador-automatico-peru
```

2. **Instalar dependencias**
```bash
npm install
```

3. **Configurar variables de entorno**
```bash
cp .env.example .env.local
```

Editar `.env.local`:
```env
REACT_APP_API_URL=https://api.cotizador.com
REACT_APP_GOOGLE_VISION_KEY=tu-api-key
REACT_APP_STORAGE_BUCKET=tu-bucket
```

4. **Ejecutar en desarrollo**
```bash
npm start
```

La aplicación estará disponible en `http://localhost:3000`

## 🏗️ Arquitectura del Proyecto

```
cotizador-automatico-peru/
├── public/
│   ├── index.html
│   └── manifest.json
├── src/
│   ├── components/
│   │   ├── CotizadorPeru.jsx          # Componente principal
│   │   ├── ImageUploader.jsx          # Carga de imágenes
│   │   ├── DescriptionForm.jsx        # Formulario de especificaciones
│   │   ├── ResultsDisplay.jsx         # Mostrar resultados
│   │   └── ProductCard.jsx            # Tarjeta de producto
│   ├── services/
│   │   ├── imageAnalysis.js           # Análisis de imágenes
│   │   ├── priceSearch.js             # Búsqueda de precios
│   │   └── productDatabase.js         # Base de datos de productos
│   ├── utils/
│   │   ├── constants.js               # Constantes de la aplicación
│   │   └── helpers.js                 # Funciones auxiliares
│   ├── styles/
│   │   └── tailwind.css               # Estilos personalizados
│   ├── App.js                         # Componente raíz
│   └── index.js                       # Punto de entrada
├── docs/
│   ├── API.md                         # Documentación de API
│   └── DEPLOYMENT.md                  # Guía de despliegue
├── tests/
│   ├── components/                    # Tests de componentes
│   └── services/                      # Tests de servicios
├── .env.example                       # Ejemplo de variables de entorno
├── package.json
└── README.md
```

## 🔧 Configuración Avanzada

### Integración con APIs Externas

#### Google Vision API (Reconocimiento de Imágenes)
```javascript
// services/imageAnalysis.js
import vision from '@google-cloud/vision';

const client = new vision.ImageAnnotatorClient({
  keyFilename: process.env.GOOGLE_APPLICATION_CREDENTIALS
});

export const analyzeImage = async (imageBuffer) => {
  const [result] = await client.objectLocalization(imageBuffer);
  return result.localizedObjectAnnotations;
};
```

#### Web Scraping para Precios
```javascript
// services/priceSearch.js
export const searchPrices = async (productName) => {
  const sources = [
    'https://www.sodimac.com.pe/sodimac-pe/search',
    'https://www.promart.pe/search',
    'https://listado.mercadolibre.com.pe/'
  ];
  
  // Implementar scraping responsable con rate limiting
};
```

## 📊 Base de Datos de Productos

### Estructura de Producto

```javascript
const productSchema = {
  id: 'string',
  names: ['string'],              // Nombres alternativos
  category: 'string',             // Categoría principal
  subcategory: 'string',          // Subcategoría
  prices: {
    min: 'number',               // Precio mínimo
    max: 'number'                // Precio máximo
  },
  stores: ['string'],            // Tiendas donde está disponible
  description: 'string',         // Descripción del producto
  specifications: {
    materials: ['string'],       // Materiales disponibles
    sizes: ['string'],          // Tamaños estándar
    applications: ['string']     // Aplicaciones típicas
  },
  keywords: ['string'],          // Palabras clave para búsqueda
  imageFeatures: ['string']      // Características visuales
};
```

### Productos Soportados

| Categoría | Productos | Estado |
|-----------|-----------|---------|
| **Válvulas** | Válvulas de bola, paso, esféricas | ✅ Activo |
| **Acoples** | Acoples rápidos hidráulicos | ✅ Activo |
| **Ruedas** | Casters, ruedas industriales | ✅ Activo |
| **Bandejas** | Recolectoras de aceite | ✅ Activo |
| **Mangueras** | Hidráulicas, aire comprimido | 🚧 En desarrollo |
| **Conexiones** | Fittings, adaptadores | 📋 Planificado |

## 🔍 API Endpoints

### Análisis de Imágenes
```http
POST /api/analyze-image
Content-Type: multipart/form-data

{
  "image": "file",
  "specifications": {
    "measurements": "string",
    "usage": "string",
    "material": "string",
    "additionalInfo": "string"
  }
}
```

### Búsqueda de Precios
```http
GET /api/search-prices
Parameters:
  - product: string (required)
  - location: string (optional)
  - category: string (optional)
```

## 🧪 Testing

### Ejecutar Tests
```bash
# Tests unitarios
npm test

# Tests de integración
npm run test:integration

# Coverage
npm run test:coverage

# Tests E2E
npm run test:e2e
```

### Estructura de Tests
```javascript
// tests/components/CotizadorPeru.test.js
import { render, screen, fireEvent } from '@testing-library/react';
import CotizadorPeru from '../src/components/CotizadorPeru';

describe('CotizadorPeru Component', () => {
  test('renders upload area', () => {
    render(<CotizadorPeru />);
    expect(screen.getByText('Sube una foto del producto')).toBeInTheDocument();
  });
  
  test('handles image upload', async () => {
    // Implementar test de carga de imagen
  });
});
```

## 🚀 Despliegue

### Vercel (Recomendado)
```bash
# Instalar Vercel CLI
npm i -g vercel

# Desplegar
vercel --prod
```

### Netlify
```bash
# Build del proyecto
npm run build

# Desplegar carpeta build/
netlify deploy --prod --dir=build
```

### Docker
```dockerfile
FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --only=production
COPY . .
RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]
```

## 📈 Roadmap

### Versión 2.0 (Q1 2025)
- [ ] **Machine Learning** avanzado para reconocimiento
- [ ] **Geolocalización** para tiendas cercanas
- [ ] **Comparador de precios** en tiempo real
- [ ] **Sistema de alertas** de precio
- [ ] **API móvil** nativa

### Versión 2.1 (Q2 2025)
- [ ] **Integración con ERP** de empresas
- [ ] **Catálogo expandido** (1000+ productos)
- [ ] **Recomendaciones** de productos similares
- [ ] **Sistema de reviews** de proveedores

### Versión 3.0 (Q3 2025)
- [ ] **IA Conversacional** para especificaciones
- [ ] **Realidad Aumentada** para medidas
- [ ] **Marketplace** integrado
- [ ] **Sistema de cotizaciones** masivas

## 🤝 Contribuir

¡Las contribuciones son bienvenidas! Por favor lee nuestra [Guía de Contribución](CONTRIBUTING.md).

### Proceso de Contribución

1. **Fork** el proyecto
2. **Crear** una rama para tu feature (`git checkout -b feature/AmazingFeature`)
3. **Commit** tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. **Push** a la rama (`git push origin feature/AmazingFeature`)
5. **Abrir** un Pull Request

### Estilo de Código

```bash
# Linting
npm run lint

# Formateo
npm run format

# Pre-commit hooks
npm run prepare
```

## 📝 Licencia

Este proyecto está bajo la Licencia MIT - ver el archivo [LICENSE](LICENSE) para más detalles.

## 👥 Equipo

- **Desarrollador Principal**: [@tu-usuario](https://github.com/tu-usuario)
- **Contribuidores**: Ver [CONTRIBUTORS.md](CONTRIBUTORS.md)

## 📞 Contacto y Soporte

- **Issues**: [GitHub Issues](https://github.com/tu-usuario/cotizador-automatico-peru/issues)
- **Discussions**: [GitHub Discussions](https://github.com/tu-usuario/cotizador-automatico-peru/discussions)
- **Email**: contacto@cotizadorperu.com
- **Discord**: [Servidor de la comunidad](https://discord.gg/cotizadorperu)

## 🙏 Agradecimientos

- **Comunidad de desarrolladores** de Perú
- **Proveedores locales** que proporcionan datos
- **Usuarios beta** que probaron la aplicación
- **Librerías open source** utilizadas

---

⭐ **¡Dale una estrella si este proyecto te ayudó!** ⭐

[![GitHub stars](https://img.shields.io/github/stars/tu-usuario/cotizador-automatico-peru?style=social)](https://github.com/tu-usuario/cotizador-automatico-peru/stargazers)
