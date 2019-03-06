# node-docker
[![dockeri.co](https://dockeri.co/image/nursesenka/node)](https://hub.docker.com/r/nursesenka/node)

Node.js用のDockerfileを管理するプロジェクトです。

`node:10.15.2-alpine` をベースとしたイメージです。

## Docker Hub

https://cloud.docker.com/u/nursesenka/repository/docker/nursesenka/node

## Badge
以下で作成出来ます。

https://dockeri.co/

## 検証手順

ビルドが実行できることを確認してください。

```
docker build -t nursesenka/node .
```

`docker images` を実行し `nursesenka/node` というイメージが作成されていることを確認してください。

```
REPOSITORY                         TAG                   IMAGE ID            CREATED             SIZE
nursesenka/node                    latest                66a807fcc5d6        18 seconds ago      102MB
```

下記を実行し、コンテナが起動できることと `npm` , `yarn` のバージョンが表示されることを確認してください。

```
docker run -it nursesenka/node npm -v
docker run -it nursesenka/node yarn --version
```

## 自動Buildについて

GitHub上でタグをPushするとDocker Hub上にも反映されます。

例えばこのようなタグを設定すると・・・

```bash
git tag -a v1.0.0 -m "release version v1.0.0"
git push origin tags/v1.0.0
```

Docker Hub上では `1.0.0` のタグが自動で作成されます。（`v1.0.0` のように `v` が必要なので注意）

## バージョニングについて

[セマンティック バージョニング](https://semver.org/lang/ja/) を採用します。

## バージョンアップのルール

- 初期バージョンは `1.0.0` からスタート
- 利用するNode.jsのパッチバージョンが上がった場合はこちらもパッチバージョンを上げる
- グローバルインストールされているnpm packageがメジャーバージョンアップした時はマイナーバージョンを上げる
- Node.jsのメジャーバージョンが上がった場合
