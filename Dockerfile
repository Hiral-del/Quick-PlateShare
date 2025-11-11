# Build stage
FROM node:18-alpine AS build

WORKDIR /app

# Copy backend package.json and install dependencies
COPY backend/package.json ./backend/
RUN cd backend && npm install

# Copy frontend package.json and install dependencies
COPY backend/frontend/package.json ./backend/frontend/
RUN cd backend/frontend && npm install

# Copy source code
COPY backend/ ./backend/

# Build frontend
RUN cd backend/frontend && npm run build

# Production stage
FROM node:18-alpine

WORKDIR /app

# Copy backend dependencies and source
COPY backend/package.json ./
RUN npm install --only=production

COPY backend/ ./

# Copy built frontend
COPY --from=build /app/backend/frontend/dist ./frontend/dist

# Expose port
EXPOSE 5000

# Start the server
CMD ["npm", "start"]
