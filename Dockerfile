# Base image
FROM node:20-alpine AS base
WORKDIR /app
COPY package.json package-lock.json ./
COPY .npmrc ./

# Install dependencies
RUN npm install --frozen-lockfile

# Copy source
COPY . .

# Build all packages (if using workspaces/monorepo)
RUN npm run build || true

# Production image
FROM node:20-alpine AS prod
WORKDIR /app
COPY --from=base /app/package.json ./
COPY --from=base /app/package-lock.json ./
COPY --from=base /app/node_modules ./node_modules
COPY --from=base /app/dist ./dist
COPY --from=base /app/backend ./backend
COPY --from=base /app/frontend ./frontend
COPY --from=base /app/shared ./shared

CMD ["node", "dist/index.js"] 