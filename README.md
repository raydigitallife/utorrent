# utorrent

- 使用前要先設定本機的掛載路徑對應到 /ut/share 資料夾，這樣才會把資料保存在 container 之外
- 將下載的各種路徑也規劃在 /ut/share 之下
  - 如果在 GUI 內設定的資料夾不存在於外部或內部，可能會造成存檔失敗，因此在使用之前須建子資料夾來對應
- 使用 ubuntu.torrent 來下載測試，檔案可存於外部

## Web GUI

Login to http://YOUR-IP:8080/gui/

- admin / no password

## History

|ver | description |
|:--- |:--- |
|20191001 | OS ubuntu-16.04 |
|debian-711 | OS  debian 7.11 |

## Run docker Command

```bash
docker run -d --name utorrent \
--restart always \
-p 8080:8080/tcp -p 6881:6881/tcp -p 6881:6881/udp \
-v /LOCAL/PATH:/ut/share CONTAINER_NAME_TAG
```

## Run docker-compose

- ut.compose.yaml 的 volumes 參數需要事先注意

```bash

#檢查 config
docker-compose -f ut.compose.yaml config

#啟動
docker-compose -f ut.compose.yaml up -d

#停止
docker-compose -f ut.compose.yaml down

```

