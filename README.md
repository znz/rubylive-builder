# RubyLive を Vagrant で作成

## 使い方

- `VM_MEMORY=512 vagrant up` のように適当なメモリ容量を指定して起動します。 (指定なしなら 1024)
  - 初回起動時は box をダウンロードするので非常に時間がかかります。
  - provision で live-build などの必要なパッケージをインストールしています。
- `vagrant ssh` でゲストにログインします。
- `/vagrant/rubylive.sh` で `/home/vagrant/rubylive` で RubyLive のイメージを作成します。
- 作成できた `/home/vagrant/rubylive/*.iso` を `/vagrant` にコピーまたは移動して、ホスト OS 側に取り出します。
- 取り出した ISO ファイルを使用します。

# RubyLive を Docker で作成 (失敗)

docker 環境の中では `chroot /rubylive/chroot mount -t proc proc /proc` が `EPERM` で失敗するため、作成できませんでしたが、 `Dockerfile` は残しています。
