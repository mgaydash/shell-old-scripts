# Need python 2.6.5+ or 3.3+

# Install unzip
if ! which unzip > /dev/null; then
    yum install -y unzip
fi

# Retrieve the cli bundle
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip

# Run the installation script
./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
