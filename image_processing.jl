# The following algorithm implement different functions for image processing and shows examples

import Pkg

Pkg.add("Images")
Pkg.add("ImageView")

using Images, ImageView

# Returns the negative version of an image
function negative(pixel)
	return RGB(1 - pixel.r, 1 - pixel.g, 1 - pixel.b)
end

# Choose an image of your interest
url = "https://upload.wikimedia.org/wikipedia/commons/8/89/NextGenTeslaRoadster_%28cropped%29.jpg"

# Downloads the url into an image with a chosen name
download(url, "tesla_roadster.jpg")

# Loads the image into a variable
roadster = load("tesla_roadster.jpg")

img = roadster

# Useful info
size(roadster, 1); size(roadster, 2)

# Processes the image using a chosen function
negative_img = negative.(img)

# Shows the image in a separate window
imshow(negative_img)

