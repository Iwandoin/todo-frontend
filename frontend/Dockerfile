FROM node:12 as builder
WORKDIR /app
COPY . ./
RUN npm install
RUN npm install react-scripts -g
RUN npm install axios@0.21.1
RUN npm run build
FROM nginx:1.19.0-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /app/build /usr/share/nginx/html
EXPOSE 80

#FROM nginx:1.19.0-alpine

#RUN rm /etc/nginx/conf.d/default.conf
#COPY build/ /usr/share/nginx/html
#COPY nginx.conf /etc/nginx/conf.d
