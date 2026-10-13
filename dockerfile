#starts with the base image that includes node 16 
FROM node:16

#sets direcotry inside the contiainer to /app
WORKDIR /app

#copies package.json from local machine to container
COPY package.json .

#Executes a command during the image building process. In this case
#it installs the dependencies listed in package.json
RUN npm install

#copies all files from local directory to the container
COPY . .

#Documents which port the applciation uses
EXPOSE 3000

#specifiees the default commadn to run when a container starts
CMD [ "npm", "start" ]

