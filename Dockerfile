FROM node:22-bookworm-slim
RUN apt-get update && apt-get install -y --no-install-recommends ffmpeg fonts-noto-core fonts-noto-extra fonts-noto-myanmar && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY package.json server.js index.html ./
ENV PORT=8080
EXPOSE 8080
CMD ["npm","start"]
