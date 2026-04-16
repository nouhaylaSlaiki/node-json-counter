FROM node:18-alpine

# Dossier de travail
WORKDIR /app

# Copier fichiers
COPY package*.json ./
RUN npm install

COPY . .

# Port exposé
EXPOSE 3000

# Commande de lancement
CMD ["npm", "start"]