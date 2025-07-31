FROM node:18

WORKDIR /app

# ثبت الباكجات
RUN npm install -g @shopify/dev-mcp @latitude-data/supergateway

ENV PORT=8802

# انسخ سكربت التشغيل
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh

CMD ["sh", "/app/start.sh"]

EXPOSE 8802
