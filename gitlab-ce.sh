docker run -d \
        --hostname gitlab \
        -p 443:443 -p 80:80 -p 23:22 \
        --name gitlab \
        --restart always \
        -v /srv/gitlab/config:/etc/gitlab \
        -v /srv/gitlab/logs:/var/log/gitlab \
        -v /srv/gitlab/data:/var/opt/gitlab \
        gitlab/gitlab-ce:latest
