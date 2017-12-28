# Always check settings:
npm config list

# set a proxy
set HTTP_PROXY=
set HTTPS_PROXY=%HTTP_PROXY%
npm config set proxy %HTTP_PROXY%
npm config set https.proxy %HTTPS_PROXY%
npm config set https-proxy %HTTPS_PROXY%
git config --global http.proxy %HTTP_PROXY%
git config --global https.proxy %HTTPS_PROXY%

# unset proxy
npm config delete proxy
npm config delete https.proxy
npm config delete https-proxy
git config --global --unset http.proxy
git config --global --unset https.proxy

# Command to use:
git config --global http.proxy http://proxyuser:proxypwd@proxy.server.com:8080
# change proxyuser to your proxy user
# change proxypwd to your proxy password
# change proxy.server.com to the URL of your proxy server
# change 8080 to the proxy port configured on your proxy server

# If you decide at any time to reset this proxy and work without proxy:

#Command to use:
git config --global --unset http.proxy

#Finally, to check the currently set proxy:
git config --global --get http.proxy
