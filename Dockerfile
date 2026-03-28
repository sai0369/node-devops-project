# -------- Stage 1: Build --------
FROM node:18 AS builder

WORKDIR /app

COPY app/package*.json ./
RUN npm install

COPY app/ .

# -------- Stage 2: Production --------
FROM node:18-alpine

WORKDIR /app

RUN addgroup -S app && adduser -S app -G app

COPY --from=builder /app .

USER app

EXPOSE 3000

CMD ["node", "app.js"]