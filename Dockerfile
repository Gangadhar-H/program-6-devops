# Base image
FROM node:18-alpine
# create working directory
WORKDIR /app
# copy packages 
COPY package*.json .
RUN npm install
# Expose port
EXPOSE 3000
# start the app
CMD ["npm", "start"]