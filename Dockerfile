# Step 1: Use the official Nginx image
FROM nginx:stable-alpine

# Step 2: Set working directory
WORKDIR /usr/share/nginx/html

# Step 3: Remove default Nginx static assets
RUN rm -rf ./*

# Step 4: Copy your project files into Nginx's web root
COPY . .

# Step 5: Expose port 80
EXPOSE 80

# Step 6: Start Nginx (default command in base image)
CMD ["nginx", "-g", "daemon off;"]
