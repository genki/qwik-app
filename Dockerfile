FROM node:alpine AS base

RUN corepack enable
RUN mkdir /app
WORKDIR /app
COPY package.json pnpm-lock.yaml ./
COPY server ./server
COPY dist ./dist
COPY .env .env.local
COPY node_modules ./node_modules

ENV NODE_ENV=production
EXPOSE 3000
ENTRYPOINT ["pnpm"]
CMD ["serve"]
