# LINE-mqttbot
LINE Bot と会話して MQTT ブローカを操作することができます

## 使い方
事前に LINE Bot API 用のアカウントを取得してください  
https://business.line.me/services/products/4/introduction

### Heroku にアプリをデプロイします
[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy?template=https://github.com/kakakikikeke/LINE-mqttbot.git)

### Fixie アドオンを有効にします
* https://elements.heroku.com/addons/fixie
* 取得できた IP アドレスを LINE Bot API の Server IP Whitelist に設定します

### コールバック URL を設定します
* Heroku にデプロイしたアプリの URL を LINE Bot API の Callback URL に設定します

### 環境変数を設定します
* LINE 設定

```
heroku config:set LINE_CHANNEL_ID=1234567890 LINE_CHANNEL_SECRET=your_line_channel_secret LINE_CHANNEL_MID=your_line_channel_mid --app your-line-bot
```

* Fixie 設定

```
heroku config:set FIXIE_URL_HOST=xxxxxxxxxxxx.usefixie.com FIXIE_URL_PORT=80 FIXIE_URL_USER=fixie FIXIE_URL_PASSWORD=xxxxxxxxxxxxx --app your-line-bot
```

* MQTT 設定

```
heroku config:set MQTT_HOST=your.mqtt.broker MQTT_PORT=1883 MQTT_TOPIC=topic MQTT_QOS=0 MQTT_USERNAME=user MQTT_PASSWORD=pass --app your-line-bot
```

### ボット友達になる
* LINE Bot API の QR コードを LINE アプリで読み取り友達になります

### 会話してみる
![bot-sample-demo]https://lh3.googleusercontent.com/-eALbZHnc5R0/V4e1yf_4ApI/AAAAAAAAJCQ/XN8MBOz7GqsE4BKtBrm6O9qorPlikc01QCKgB/s0/bot_sample.png
