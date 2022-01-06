TEMP_ID="lt-02656782e3be9b697"
TEMP_VER=2

aws ec2 run-instances --launch-template LaunchTemplateId=${TEMP_ID},Version=${TEMP_VER} --tag-specifications "ResourceType=spot-instances-request,Tags=[{Key=Name,Value=frontend}]" "ResourceType=instance,Tags=[{Key=Name,Value=frontend}]" | jq
