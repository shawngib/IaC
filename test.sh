apt install docker.io -y
docker pull flatsatcr.azurecr.us/frame-grabber
docker tag flatsatcr.azurecr.us/frame-grabber flatsatgovacr.azurecr.us/frame-grabber
docker login flatsatgovacr.azurecr.us -u flatsatgovacr -p 9hDYSTXNI+5AXHBjuTilwtshifk4HOqH
docker push flatsatgovacr.azurecr.us/frame-grabber
printf '{"Docker": "complete"}'
