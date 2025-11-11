# Quick PlateShare - Recipe Sharing Website

A full-stack recipe sharing application built with React, Node.js, Express, and MongoDB.

## Features

- User authentication (register/login)
- Create and share recipes
- Like recipes
- Comment on recipes
- Search recipes
- Responsive design with Tailwind CSS

## Tech Stack

- **Frontend:** React, Vite, Tailwind CSS, Axios
- **Backend:** Node.js, Express, MongoDB, Mongoose
- **Authentication:** JWT
- **File Upload:** Multer

## Setup

1. Clone the repository
2. Install dependencies:
   ```bash
   cd backend
   npm install
   cd ../backend/frontend
   npm install
   ```
3. Set up environment variables:
   - Copy `.env.example` to `.env`
   - Update MongoDB URI and JWT secret
4. Start MongoDB
5. Start the backend:
   ```bash
   cd backend
   npm run dev
   ```
6. Start the frontend:
   ```bash
   cd backend/frontend
   npm run dev
   ```
7. Open http://localhost:3000

## Deployment

Use the provided Dockerfile for containerized deployment.

## API Endpoints

- `POST /api/auth/register` - Register user
- `POST /api/auth/login` - Login user
- `GET /api/recipes` - Get recipes (with search)
- `POST /api/recipes` - Create recipe
- `GET /api/recipes/:id` - Get single recipe
- `POST /api/recipes/:id/like` - Like recipe
- `POST /api/recipes/:id/comments` - Add comment
