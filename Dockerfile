FROM node:22

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the rest of the app
COPY . ./

# Expose the port React runs on
EXPOSE 3000

# Start the React development server
CMD ["npm", "start"]

