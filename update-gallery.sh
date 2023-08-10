#!/bin/bash

set -e

# Get all pictures from ./assets/images/galleria

images=$(find ./assets/images/galleria -type f -name '*.jpg')

echo "Creating a gallery for images: $images"

for image in $images; do
  echo "Processing $image"
  # Get the image name without the extension
  image_name=$(basename $image .jpg)
  # Create a thumbnail for the image
  convert $image -resize 300x300^ -gravity center -extent 300x300 ./assets/images/galleria/$image_name-thumb.jpg
  # Create a thumbnail for the image
  convert $image -resize 800x800^ -gravity center -extent 800x800 ./assets/images/galleria/$image_name.jpg
done
