# استخدم نسخة node كاملة (مش alpine)، عشان تحل مشاكل build أحيانًا
FROM node:18

WORKDIR /app

# نزّل الباكجات بشكل دائم
RUN npm install -g @shopify/dev-mcp @latitude-data/supergateway

# تعيين البورت الافتراضي
ENV PORT=8802

# شغّلها من الباكدجات المنزّلة مش npx
CMD ["supergateway", "--stdio", "dev-mcp", "--port", "8802"]

EXPOSE 8802
