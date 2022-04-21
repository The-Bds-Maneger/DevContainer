ARG DOCKERIMAGE=ghcr.io/the-bds-maneger/devcontainer_base:latest
FROM $DOCKERIMAGE
RUN \
VERSION=$(wget -qO- https://api.github.com/repos/Sirherobrine23/DebianNodejsFiles/releases/latest |grep 'name' | grep "nodejs"|grep "$(dpkg --print-architecture)"|cut -d '"' -f 4 | sed 's|nodejs_||g' | sed -e 's|_.*.deb||g'|sort | uniq|tail -n 1);\
wget -q "https://github.com/Sirherobrine23/DebianNodejsFiles/releases/download/debs/nodejs_${VERSION}_$(dpkg --print-architecture).deb" -O /tmp/nodejs.deb && \
sudo dpkg -i /tmp/nodejs.deb && rm -rfv /tmp/nodejs.deb && \
sudo bash -c 'npm install -g npm@latest && npm install -g pm2 typescript ts-node nodemon'

