# aria2 installer
sometimes you need to install aria2 and get it working with nginx without doing anything but running a single script...

### Relevant links and documentation
web wrapper: https://github.com/ziahamza/webui-aria2   
documentation: https://aria2.github.io/manual/en/html/index.html   
python3 module for aria2 https://github.com/kevinxhuang/pyaria2   

## What this does

It installs aria2 on OSX or Linux and installs NGINX and dependencies as necessary.

## How to do this successfully (TL;DR version)

1. Make the script executable: run `chmod + x aria_install.sh` 
2. Run the script: run `sudo ./aria_install.sh` (needs sudo to mod /etc/hosts file for aria.local alias)
3. Copy the NGINX vhost file to sites-available: `sudo cp aria.local [path-to-your-nginx-sites-available-folder]`
4. Symlink to sites-enabled: (osx homebrew path example) `sudo ln -s /usr/local/etc/nginx/sites-available/aria.local /usr/local/etc/nginx/sites-enabled/`
5. restart nginx `sudo nginx -s reload`
6. run `aria2c --enable-rpc --rpc-listen-all --rpc-secret helloworldhelloworldhelloworld`
7. open up a browser window at http://aria.local and in the settings make sure to input 127.0.0.1 and port 6800 as connection info.
8. to run as a service, move the aria.conf to `/etc/supervisor/conf.d/` and make sure it points correctly to your bash script that executes the above aria2c command.

## How to update?

1. Run the script again, it will automatically do a git pull on [webui-aria2](https://github.com/ziahamza/webui-aria2) and restart the aria2 rpc server.
