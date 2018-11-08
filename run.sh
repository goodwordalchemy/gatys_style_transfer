 #!/bin/bash
GCLOUD_UTILS_PATH="../gcloud_utils"
REMOTE_SCRIPTS_PATH="./remote_scripts"

$GCLOUD_UTILS_PATH/scripts/configure-remote-server.sh nst

until (gcloud compute scp $REMOTE_SCRIPTS_PATH/run-script-on-remote-server.sh nst:~); do
    echo "failed test copy.  waiting 10 seconds"
    sleep 10
done

gcloud compute scp --recuse images nst:~/nst_images 

$REMOTE_SCRIPTS_PATH/ssh_flow.expect

gcloud compute scp nst:~/gatys_style_transfer/images/content.jpg images

echo "y" | gcloud compute instances delete nst
