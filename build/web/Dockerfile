# Upstream's Dockerfile (app/Dockerfile) with two changes: the source is copied from app/, and
# the database hosts are baked in as ENV (upstream's docker-compose.yml sets them; app/.env
# points at localhost and dotenv never overrides a variable already set).
FROM node:22

ENV SQL_LOCAL_CONN_URL=mysql \
    MONGO_LOCAL_CONN_URL=mongodb://mongo:27017/node-dvws

# Install build dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    make \
    g++ \
    build-essential \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /home/dvws-node

# Copy package files first for caching
COPY app/package*.json ./

# Install dependencies
RUN npm install

# Copy application code
COPY app/ .

# Build Svelte frontend (outputs directly to ../public via adapter-static config)
RUN cd frontend && npm install && npm run build

# Expose ports
EXPOSE 80

# Start command
CMD node scripts/seed-database.js && npm start
