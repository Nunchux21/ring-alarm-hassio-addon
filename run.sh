echo Ring Alarm Integration
echo Node Version
node -v
echo NPM Version
npm -v
git --version

cp /data/options.json ring-mqtt/config.json

cd ring-mqtt
npm install
npm audit fix
chmod +x ring-mqtt.js
DEBUG=ring-alarm-mqtt /ring-mqtt/ring-mqtt.js
