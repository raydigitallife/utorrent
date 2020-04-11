# utorrent

- 使用前先設定本機的掛載路徑對應到 /ut/share 資料夾，這樣才會把資料保存在 container 之外
- 下載的各種路徑規劃在 /ut/share 之下
  - 如果在 GUI 內設定的資料夾不存在於外部或內部，可能會造成存檔失敗，因此在使用之前須建子資料夾來對應
- 使用 ubuntu.torrent 來下載測試檔案是否可存於外部

## Web GUI

Login to http://YOUR-IP:8080/gui/

- admin / no password

## History

|ver | description | note |
|:--- |:--- |:--- 
|2020-v4 | ubuntu-16.04 | 例行更新|
|2020-v2 | ubuntu-16.04 | 加入 NAS container 的個人設定 settings.dat 下載檔案的語系問題已經解決 |
|2020-v1 | ubuntu-16.04 | 加入 NAS container 的個人設定 settings.dat |
|20191001 | ubuntu-16.04 | 原始 utorrent-server 的檔案 |
|debian-711 | debian 7.11 | 原始 utorrent-server 的檔案 |

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
