# NFLTOS Architecture Overview

## System Structure

```
+-------------------+      +-------------------+      +-------------------+
|   Data Service    |<---->| Projection Service|<---->| Simulation Service|
+-------------------+      +-------------------+      +-------------------+
        |                        |                        |
        v                        v                        v
+-------------------+      +-------------------+      +-------------------+
|OptimizationService|<---->|  Contest Service  |<---->|     Frontend      |
+-------------------+      +-------------------+      +-------------------+
```

- **Data Service**: Ingests and manages raw data (player stats, schedules, etc.)
- **Projection Service**: Generates player and game projections using statistical models
- **Simulation Service**: Simulates tournament outcomes for risk and leverage analysis
- **Optimization Service**: Builds optimal lineups using game theory and portfolio optimization
- **Contest Service**: Manages contest entry, lineup submission, and results
- **Frontend**: React SPA for user interaction, lineup management, and analytics
- **Shared**: Common types, utilities, and logging used by all services

## Data Flow
1. Data Service ingests and cleans data
2. Projection Service consumes data and produces projections
3. Simulation Service uses projections to simulate outcomes
4. Optimization Service uses simulation results to generate lineups
5. Contest Service manages contest entries and results
6. Frontend interacts with all backend services via REST/gRPC APIs

## Communication
- Services communicate via REST/gRPC APIs
- Shared types and utilities ensure consistency
- Logging and monitoring are centralized in the shared module 