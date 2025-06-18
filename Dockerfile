FROM oven/bun AS runtime
WORKDIR /app

COPY . .

RUN bun install
RUN bun run build

ENV HOST=0.0.0.0
ENV PORT=80
EXPOSE 80

CMD bun ./dist/server/entry.js