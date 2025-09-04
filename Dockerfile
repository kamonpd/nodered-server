FROM nodered/node-red:latest

ENV PORT=10000

# copy flows.json เข้า container
COPY flows.json /data/flows.json

# บอก Node-RED ให้ใช้ userDir /data และ port จาก Render
CMD ["npm", "start", "--", "--userDir", "/data", "--port", "${PORT}"]
