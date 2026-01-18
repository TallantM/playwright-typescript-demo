FROM mcr.microsoft.com/playwright:v1.57.0-jammy
WORKDIR /app

# Copy package files FIRST
COPY package.json package-lock.json ./

# Install dependencies (this layer gets cached)
RUN npm ci

# Copy everything else AFTER
COPY . .

CMD ["npm", "test"]