# Gym Management System

Gym management system prototype with AI-powered recommendations, member check-in, class scheduling, and inventory management.

## Quick Start

### Prerequisites
- Node.js 18+
- Docker & Docker Compose
- PostgreSQL 15+
- Redis 7+

### Development Setup

1. Clone the repository:
```bash
git clone https://github.com/username/gym-management-system.git
cd gym-management-system
```

2. Install dependencies:
```bash
npm ci
```

3. Set up environment:
```bash
cp .env.example .env
```

4. Start services:
```bash
docker-compose up -d
```

5. Run development server:
```bash
npm run dev
```

### Testing
```bash
npm run lint              # Run ESLint
npm run format:check      # Check code formatting
npm run format            # Auto-format code
```

### Deployment

See [DEPLOYMENT.md](DEPLOYMENT.md) for detailed deployment instructions.

## Project Structure
gym-management-system/
├── src/
│   ├── api/
│   ├── services/
│   ├── models/
│   └── index.ts
├── tests/
├── scripts/
├── .github/workflows/
├── docker-compose.yml
├── Dockerfile
└── README.md

## DevOps

- **Version Control**: Git with GitHub
- **CI/CD**: GitHub Actions
- **Deployment**: Blue-Green with Docker
- **Monitoring**: ELK Stack
- **Infrastructure**: Docker containers

## License
TEST
MIT