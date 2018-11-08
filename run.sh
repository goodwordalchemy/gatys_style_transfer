 #!/bin/bash
GCLOUD_UTILS_PATH="../gcloud_utils/"
REMOTE_SCRIPTS_PATH="./remote_scripts"

until (gcloud compute scp $REMOTE_SCRIPTS_PATH/run-script-on-remote-server.sh nst:~); do
    echo "failed test copy.  waiting 10 seconds"
    sleep 10
done

./expect_script.expect

gcloud compute instances delete nst
