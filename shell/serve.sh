docker exec -i mkdocs /bin/ash -c "ps aux | grep serve | grep -v grep  | awk '{print \$1}'"
docker exec -i mkdocs /bin/ash -c "ps aux | grep serve | grep -v grep  | awk '{print \$1}' | xargs -I% kill %"
docker exec -i mkdocs /bin/ash -c "cd /root/projects/docs && /usr/bin/mkdocs serve"