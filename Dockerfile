FROM node:20-bullseye

# Install ffmpeg and yt-dlp
RUN apt-get update && apt-get install -y ffmpeg python3-pip ca-certificates &&     pip3 install yt-dlp &&     apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app
COPY package.json package-lock.json* ./
RUN npm install --production
COPY . .
EXPOSE 3000
CMD ["node","server.js"]