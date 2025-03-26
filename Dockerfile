# Utilisez une image Node.js plus légère
FROM node:16-slim

WORKDIR /app

# Installer les dépendances
COPY package.json ./
RUN npm install

# Copier le reste des fichiers
COPY . .

EXPOSE 3000

CMD ["node", "app.js"]





