######################################################################
#   This is the dockerfile for containerizing the Springboot app     #
#   Created by : Abhinish Raj                                        #
#   Date       :  30-Aug-18                                          #
######################################################################

##FROM IS USED TO PULL THE RESPECTIVE IMAGE WHICH IS REQUIRED TO RUN
## YOUR APPLICATION INSIDE THE CONTAINER YOU CAN FIND LOT OF IMAGE IN
## DOCKER HUB

FROM node:8

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app sourceg
COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]
