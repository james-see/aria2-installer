# aria2-installer
sometimes you need to install aria2 and get it working with nginx without doing anything but running a single script...

## What this does

It installs aria2 on OSX or Linux and installs nginx and dependencies as necessary.

## How to do this successfully (TL;DR version)

1. Make the script executable: run `chmod + x aria_install.sh` 
2. Run the script: run `sudo ./aria_install.sh` (needs sudo to mod /etc/hosts file for aria.local alias)
3. Copy the NGINX vhost file to sites-available: `sudo cp aria.local [path-to-your-nginx-sites-available-folder]`
4. Symlink to sites-enabled: (osx homebrew path example) `sudo ln -s /usr/local/etc/nginx/sites-available/aria.local /usr/local/etc/nginx/sites-enabled/`
5. restart nginx `sudo nginx -s reload`

## How to update?

1. Run the script again, it will automatically do a git pull on aria2-web and restart the aria2 rpc server.
