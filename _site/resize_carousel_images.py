from PIL import Image
import glob


def read_images(path):
    images = []
    image_paths = []

    # loop through all the images
    for image_path in glob.glob(path):
        # read image
        image = Image.open(image_path)

        # append image to list
        images.append(image)
        image_paths.append(image_path)

    # return images
    return images, image_paths


def resize_image(image, width, height):
    # # resize image
    # resized_image = image.resize((width, height))

    # crop the images from center of the image
    resized_image = image.crop((0, 0, width, height))

    # return resized image
    return resized_image


if __name__ == "__main__":
    images, image_paths = read_images("images/carousel/*.*")

    for image, path in zip(images, image_paths):
        cropped_image = resize_image(image, 1080, 720)
        cropped_image.save(path)
