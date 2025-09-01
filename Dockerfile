FROM nodered/node-red:latest

# Render ใช้ ENV PORT เป็นตัวกำหนด port ที่เปิด
ENV PORT=10000

# บอก Node-RED ให้ใช้ port จาก ENV PORT
CMD ["npm", "start", "--", "--port", "${PORT}", "--userDir", "/data"]

