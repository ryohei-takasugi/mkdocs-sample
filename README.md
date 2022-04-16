## 利用の仕方

次の手順でビルドを行い、HTMLファイルを生成してください。

ご自身のホストディレクトリの`mkdocs-sample/mkdocs/site/index.html`を開いてください。

```
~ % git clone https://github.com/ryohei-takasugi/mkdocs-sample.git
~ % cd mkdocs-sample
mkdocs-sample % docker-compose up -d
mkdocs-sample % sh shell/build.sh
mkdocs-sample % open mkdocs/site/index.html
```

## 新しくドキュメントを作成する

このリポジトリでは、サンプルデータが入った状態です。

新しくご自身で利用するときは、次の操作を行います。

```
mkdocs-sample % rm -rf mkdocs/docs/* 
mkdocs-sample % rm -rf mkdocs/includes/* 
mkdocs-sample % rm -rf mkdocs/site
mkdocs-sample % sh shell/new.sh
```

もしくは次のファイルを、ご自身のプロジェクトフォルダに配置してください。

```
shell/build.sh
shell/new.sh
shell/serve.sh
mkdocs/mkdocs.yml
docker-compose.yml
Dockerfile
```