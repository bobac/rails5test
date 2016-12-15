set :stage, :production

# Replace 127.0.0.1 with your server's IP address!
server 'ec2-35-156-120-248.eu-central-1.compute.amazonaws.com', user: 'deploy', roles: %w{web app}