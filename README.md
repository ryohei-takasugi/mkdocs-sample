## 利用の仕方

次の手順でビルドを行い、HTMLファイルを生成してください。

ご自身のホストディレクトリの`mkdocs-sample/mkdocs/site/index.html`を開いてください。

```
git clone https://github.com/ryohei-takasugi/mkdocs-sample.git
cd mkdocs-sample
docker-compose up -d
sh shell/build.sh
open mkdocs/site/index.html
```
