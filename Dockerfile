# Usa una imagen base de Nginx (o cualquier otro servidor web)
FROM nginx:latest

# Copia el archivo HTML al directorio raíz del servidor web
COPY index.html /usr/share/nginx/html/

# Expone el puerto 80 para acceder al servidor web
EXPOSE 80

# Define el comando de inicio (inicia el servidor web)
CMD ["nginx", "-g", "daemon off;"]