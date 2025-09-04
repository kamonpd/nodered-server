FROM nodered/node-red:latest

ENV PORT=10000

# copy flows.json ที่อยู่ใน repo ไปยัง /data/flows.json
COPY flows.json /data/flows.json

CMD ["npm", "start", "--", "--port", "${PORT}", "--userDir", "/data"]
