result1=`sudo apt install docker.io -y`
result2=$(docker pull flatsatcr.azurecr.us/frame-grabber)
docker tag flatsatcr.azurecr.us/frame-grabber flatsatgovacr.azurecr.us/frame-grabber
docker login flatsatgovacr.azurecr.us -u flatsatgovacr -p 9hDYSTXNI+5AXHBjuTilwtshifk4HOqH
result3=$(docker push flatsatgovacr.azurecr.us/frame-grabber)
echo {"Install": "$result1", "Pull": "$result2", "push": "$result3"} | jq > $AZ_SCRIPTS_OUTPUT_PATH
printf '{"Install": "%s", "Pull": "%s", "push":"%s"}' "$result1" "$result2" "$result3"
