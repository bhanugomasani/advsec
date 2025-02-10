# Step 1: Use the official Node.js image as base
FROM node:16

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy package.json and package-lock.json (if available) for dependency installation
COPY package*.json ./

# Step 4: Install dependencies inside the container
RUN npm install

# Step 5: Copy the rest of the app files into the container
COPY . .

# Step 6: Build the React app for production
RUN npm run build

# Step 7: Install a simple HTTP server to serve the app
RUN npm install -g serve

# Step 8: Expose the port the app will run on
EXPOSE 5000

# Step 9: Command to start serving the built app
CMD ["serve", "-s", "build", "-l", "5000"]
