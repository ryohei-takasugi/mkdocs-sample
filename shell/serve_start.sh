docker exec -i mkdocs /bin/ash -c "ps aux | grep /usr/bin/mkdocs | grep -v grep"
docker exec -i mkdocs /bin/ash -c "ps aux | grep /usr/bin/mkdocs | grep -v grep | awk '{print \$1}' | xargs -I% kill %"
docker exec -i mkdocs /bin/ash -c "cd /root/projects/docs && /usr/bin/mkdocs serve"