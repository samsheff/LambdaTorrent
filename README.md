# LambdaTorrent
Container to Download Torrents Straight to S3 using FUSE Filesystems BTFS and S3FS

## Setup
You'll need an AWS API Key to build the container.
```sh
# Build the container
 docker build --build-arg AWS_KEY=YOUR_AWS_KEY --build-arg AWS_SECRET=YOUR_AWS_SECRET -t LambdaTorrent .
 
 # Run the container
 # By Default it will get the download.torrent file in the root of the bucket and save to the root of the bucket as well.
 docker run --privileged  --device /dev/fuse -e AWS_BUCKET=YOUR_BUCKET_NAME LambdaTorrent
 ```
