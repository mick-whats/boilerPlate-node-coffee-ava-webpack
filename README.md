# boilerPlate-node-coffee-ava-webpack


これはnodejsのmoduleを作るためのボイラープレートです。  
coffee-scriptのコンパイル、avaによる自動テスト、webpackのコンパイルが実行されます。

## download

git-hubからダウンロード、もしくはcloneしてください。

以下はcloneのサンプルです。１行です。myProjectの部分は新しいプロジェクト名です。
```
git clone https://github.com/mick-whats/boilerPlate-node-coffee-ava-webpack.git myProject
```
## init

以下を変更して使ってください。

```package.json
{
  "name": "プロジェクト名",
  "version": "0.1.0",
  "license": "ライセンス",
  "author": "作者名"
  "main": "dist/ohlc.js",
  "repository": {
    "type": "git",
    "url": "https://github.com/mick-whats/ohlc-node"
  },
  "bugs": {
    "url": "https://github.com/mick-whats/ohlc-node/issues"
  }
}
```

dependencies、devDependenciesは適当に。

gitリポジトリの削除、初期化、npmインストールを行います。

```
rm -rf .git
.git init
yarn install
```

webpack.configの修正


```
filename: 'ohlc.js' // package.jsonのmainと同じ名前にする
library: 'ohlc'// Browserでの変数名
```
## 使い方

`npm run watch`

これでcoffeeディレクトリ以下のファイルを保存する度に自動でコンパイル、テストが走ります。

