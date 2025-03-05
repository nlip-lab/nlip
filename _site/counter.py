import glob, os
import shutil


# read all the images in the folder /images/gallery
def read_images(path):
    images = glob.glob(path)
    return len(images), images


# convet the extension of all images to jpg
def convert_to_jpg(images):
    # check if images folder exists
    if not os.path.exists("images/publish"):
        os.makedirs("images/publish")
    else:
        shutil.rmtree("images/publish")
        os.makedirs("images/publish")

    for index, image in enumerate(images):
        # rename the image to indx
        image_name = f"images/publish/{index}.jpg"

        # use shuttil to copy the image and rename it
        shutil.copy(image, image_name)

    shutil.rmtree("images/gallery")

    # rename the publish folder to gallery
    os.rename("images/publish", "images/gallery")


def change_config(count):
    # replace a particular line in the config file
    with open("_config.yml", "r") as f:
        lines = f.readlines()

    # find a particular line that contains the image count
    for i, line in enumerate(lines):
        if "image_count" in line:
            # replace the line with the new image count
            lines[i] = "image_count: " + str(count) + "\n"

    # write the new lines to the config file
    with open("_config.yml", "w") as f:
        f.writelines(lines)


if __name__ == "__main__":
    count, images = read_images(path="images/gallery/*.*")

    convert_to_jpg(images)

    change_config(count)
