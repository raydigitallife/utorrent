# utorrent

## Version Update

|ver | description |
|:--- |:--- |
|ubuntu-latest | OS ubuntu-latest |
|debian-711 | OS  debian 7.11 |


## Run Command

```bash
docker run -d --name utorrent \
--restart always \
-p 8080:8080/tcp -p 6881:6881/tcp -p 6881:6881/udp \
-v /LOCAL/PATH:/ut/share CONTAINER_NAME_TAG
```

## Web GUI
Login to http://YOUR-IP:8080/gui/
- admin 
- NO password

## Notes
- 使用前要先設定本機的掛載路徑對應到 /ut/share 資料夾，這樣才會把資料保存在 container 之外
- 將下載的各種路徑也規劃在 /ut/share 之下，可以建子資料夾來對應
- 使用 ubuntu.torrent 來下載測試
- 包裝 docker 使用的 port 是 6881 與 8080，如要修改需要重新包裝 container

