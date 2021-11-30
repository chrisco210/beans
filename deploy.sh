# Script for deploying to the server
rm -r public/
hexo generate 
ssh chris@ssh.rachlinski.net 'rm -r /var/www/blog.rachlinski.net'
scp -r public/* chris@ssh.rachlinski.net:/var/www/blog.rachlinski.net