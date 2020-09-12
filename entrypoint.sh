#!/bin/bash
email=$CF_EMAIL
apikey=$CF_API_KEY
zone_id=$CF_ZONE_ID
route_id=$CF_ROUTE_ID
route_pattern=$CF_ROUTE_PATTERN
worker=$CF_WORKER_NAME

curl -X PUT "https://api.cloudflare.com/client/v4/zones/"$zone_id"/workers/routes/"$route_id"" \
-H "X-Auth-Email: "$email"" \
-H "X-Auth-Key: "$apikey"" \
-H "Content-Type: application/json" \
--data '{"pattern":"'"$route_pattern"'","script":"'"$worker"'"}'

exit 0