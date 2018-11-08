GH_USERNAME="goodwordalchemy"
GH_REPO_NAME="gatys_style_transfer"

GH_URL="https://github.com/$GH_USERNAME/$GH_REPO_NAME.git"

git clone $GH_URL
cd $GH_REPO_NAME 

mkdir images
mv ~/nst_images images

sudo nvidia-docker run --rm -i -p 8080:8080 -v `pwd`:`pwd` -w `pwd` goodwordalchemy/tf-gpu:1.0.0 ./main.sh
