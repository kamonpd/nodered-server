FROM nodered/node-red:latest

ENV PORT=10000

# copy flow + package.json
COPY flows.json /data/flows.json
COPY package.json /data/package.json

# install dependencies
RUN cd /data && npm install --unsafe-perm --no-update-notifier --no-fund --only=production

CMD ["npm", "start", "--", "--port", "${PORT}", "--userDir", "/data"]
