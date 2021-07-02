# Configure FUSE FIlesystems
s3fs $AWS_BUCKET s3
btfs s3/download.torrent torrent

# Copy Torrent Contents To S3
cp -r torrent/* s3