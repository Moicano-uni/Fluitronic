# Configuración del Cotizador Automático Perú
# Copia este archivo como .env.local y configura tus valores

# API Keys para reconocimiento de imágenes
REACT_APP_GOOGLE_VISION_KEY=tu-google-vision-api-key
REACT_APP_AWS_REKOGNITION_KEY=tu-aws-rekognition-key

# URLs de APIs de precios
REACT_APP_SODIMAC_API=https://api.sodimac.com.pe
REACT_APP_PROMART_API=https://api.promart.pe
REACT_APP_MERCADOLIBRE_API=https://api.mercadolibre.com/sites/MPE

# Base de datos
REACT_APP_DATABASE_URL=https://tu-base-de-datos.com
REACT_APP_DATABASE_KEY=tu-database-key

# Servicios de almacenamiento
REACT_APP_CLOUDINARY_URL=cloudinary://api-key:api-secret@cloud-name
REACT_APP_AWS_S3_BUCKET=tu-bucket-name
REACT_APP_AWS_REGION=us-east-1

# APIs de geolocalización
REACT_APP_GOOGLE_MAPS_KEY=tu-google-maps-key
REACT_APP_MAPBOX_KEY=tu-mapbox-key

# Configuración de scraping (opcional)
REACT_APP_SCRAPING_SERVICE_URL=https://tu-servicio-scraping.com
REACT_APP_PROXY_URL=https://tu-proxy.com

# Analytics (opcional)
REACT_APP_GA_TRACKING_ID=UA-XXXXXXXXX-X
REACT_APP_HOTJAR_ID=tu-hotjar-id

# Configuración de desarrollo
NODE_ENV=development
PORT=3000
GENERATE_SOURCEMAP=true