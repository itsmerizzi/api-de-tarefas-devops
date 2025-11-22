# Dockerfile
# imagem oficial Node.js (versão 18, base Alpine)
FROM node:18-alpine
# diretório de trabalho dentro do container
WORKDIR /usr/src/app

# Copia arquivos de dependências e instala módulos (aproveita cache do Docker)
COPY package*.json ./
# instala dependências da aplicação              
RUN npm install

# Copia todo o código da API para dentro da imagem
COPY . .
# expõe a porta 3000 (usada pela API)
EXPOSE 3000

# Inicializa a aplicação (ajuste o arquivo de entrada conforme o seu projeto)
# ou ["npm", "start"] se preferir
CMD ["node", "index.js"]
