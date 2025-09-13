# YT Short Generator

Generates short clips from YouTube links using yt-dlp and ffmpeg.

## Requirements
- Node.js (v18+ recommended)
- ffmpeg installed and on PATH
- yt-dlp installed (or install via pip: `python3 -m pip install yt-dlp`)
- (Optional) Docker & docker-compose

## Local run
1. `npm install`
2. `node server.js`
3. Open `http://localhost:3000` and paste a YouTube link. Set start/duration (seconds) and click Generate.

## Docker run
1. `docker build -t yt-short-generator .`
2. `docker run -p 3000:3000 yt-short-generator`
3. Open `http://localhost:3000`

## Important notes
- This POC does not include authentication or rate-limiting. Do NOT deploy publicly without adding protections.
- Downloading videos must respect copyright and YouTube's Terms of Service.
- For production, consider:
  - Queue system (Redis + Bull/BullMQ)
  - Persistent storage (S3) for outputs
  - Rate limiting and authentication
  - Proper cleanup of temp files