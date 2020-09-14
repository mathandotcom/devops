FROM node:12
ARG DBNAME
ENV DBNAME=$DBNAME
# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .


EXPOSE 8080
#RUN echo $DBNAME
RUN echo $DBNAME
RUN chmod +x /usr/src/app/execute.sh
ENTRYPOINT ["/usr/src/app/execute.sh"]
