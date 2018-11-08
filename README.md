# Gatys Style Transfer Script

A tool for running [neural style transfer](https://arxiv.org/abs/1508.06576).  This algorithm pretty much requires a gpu, so this tool automates the process of creating a remote server with a gpu, running the style transfer algorithm on the remote server, and then saving the resulting pastiche locally.

### Requirements
I'm not going to bother listing all of the things you need to install in order to make this run, but if you find this page and you want to run it, hit me up and I will walk you through using it.  If enough people hit me up, I might include more detailed instructions.

This script expects a two files in the images directory:
    - "content.jpg": a picture whose content you want to draw in the style of the style image.
    - "style.jpg": a picture whose style you want to use for redrawing the content image
It outputs one file in the images directory:
    - "output.jpg": the final output image

## Guarantees
None.  I would definitely double check that any servers this script creates were properly shut down, unless you want to lose a lot of money.
