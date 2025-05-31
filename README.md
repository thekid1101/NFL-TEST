# NFL DFS Tournament Optimization System (NFLTOS)

## Overview
NFLTOS is a comprehensive platform designed to maximize profitability in NFL Daily Fantasy Sports tournaments. It integrates advanced mathematical frameworks (Game Theory Optimization, Modern Portfolio Theory, Bayesian inference, simulation-based evaluation, and quantitative leverage identification) to create and deploy optimal lineup portfolios.

## System Architecture Diagram
```
backend/
  data-service/           # Data ingestion and management
  projection-service/     # Player and game projections
  simulation-service/     # Simulate tournament outcomes
  optimization-service/   # Lineup optimization engine
  contest-service/        # Contest entry and management
frontend/                 # React SPA for user interaction
shared/                   # Shared types, utilities, and logging
```
*Each backend service is a standalone Node.js microservice. All services communicate via REST/gRPC and share types/utilities from the shared/ directory. The frontend consumes APIs from backend services.*

## Project Structure
- `backend/` — Microservices for data, projection, simulation, optimization, and contest management
- `frontend/` — React-based SPA for user interaction
- `shared/` — Shared types and utilities

## Getting Started
1. Clone the repository
2. Install dependencies: `npm install`
3. Set up environment variables as needed
4. Use Docker for local development: `docker-compose up`

## Contribution Guidelines
- Fork the repository and create a feature branch
- Follow the code style enforced by ESLint and Prettier
- Write clear, descriptive commit messages
- Add or update documentation as needed
- Ensure all tests pass before submitting a pull request
- For major changes, open an issue first to discuss the proposal

## License
MIT 