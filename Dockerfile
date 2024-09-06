# Use official Node.js image as a base
FROM node:18

# Set working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json into the working directory(if there is any )
COPY package*.json ./

# Install Medusa's dependencies.
RUN npm install

# Copying  the rest of the application code into the container
COPY . .

# Expose the port the Medusa server to rum in
EXPOSE 9000

# Start the Medusa server
CMD ["npm", "run", "start"]
