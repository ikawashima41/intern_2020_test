# iOS 3daysサマーインターン事前課題🏄
<img src="https://github.com/ikawashima-cq/Resource/blob/master/caraquri_logo_hz_cmyk%20(2).png" width="90%">

## 課題概要
からくり株式会社 iOS 3dayサマーインターンに参加するにあたり、技術的に困らないようにするための事前課題です。

本課題が与えられた方は、下記の概要を詳しく読んだ上で課題を取り組んでください。

## アプリ概要
Qiitaの記事を検索するアプリです。

## ビルド環境
- Xcode: 11.6
- Swift: Swift5系
- Target iOS Version: 12.0以上

## 導入ライブラリ
- [R.swift](https://github.com/mac-cain13/R.swift)
- [Nuke](https://github.com/kean/Nuke)

※パッケージ管理ツールは[Carthage](https://github.com/Carthage/Carthage)、Lintツールは[SwiftLint](https://github.com/realm/SwiftLintb)を導入しています。

## 動作確認機種
- iPhone 8、 iPhoneX系、 iPhone11系のシミュレーター、もしくは実機での確認を推奨しています。 (iPadやiPhone SEなどの画面サイズには基本対応しなくて構いません)

## ビルド方法
install.shをつかうことでビルド環境を作成できる。
```
cd [自身の作業ディレクトリ]/intern_homework_ios
sh install.sh

~~~~~~(内容を確認したら)~~~~~~
open intern_homework_ios.xcodeproj/

~~~~~~(xcodeを開いたら)~~~~~~
xcode上で command+R でビルド
```

※install.shで`SwiftLint`と`carthage`のアップデート(インストール)を行っている。

## 課題の取り組み方
コーディング規約:
- 標準的なコーディング規約であればどれに準じても良いですが、例として[参考リンク](
https://github.com/yumemi/ios-engineer-codecheck)を載せます。

### 課題の進めかた
1. 課題1(最低限取り組んで欲しいもの)を行ってください。
2. 課題2の中から実装できるところまで実装してください(実力を高めます)

### PRを作成する上での注意点
- ローカルでビルドできている
- 動作確認までしている
- SwiftLintで出力されている警告はなるべく削除する

## 当日までに調べておいて欲しい概念
- Swiftのアクセス修飾子
- オプショナルバインディング
- TableView等基礎的なView
- コードでの画面遷移
  - present, push の違い
- 循環参照
- ライフサイクル

## GitFlow

- master
  - プロダクトとしてリリースするためのブランチ。リリースしたらタグ付けする。
- develop
  - 開発ブランチ。コードが安定し、リリース準備ができたら master へマージする。リリース前はこのブランチが最新バージョンとなる。
- feature
  - 機能の追加。 develop から分岐し、 develop にマージする。
- release
  - プロダクトリリースの準備。develop ブランチにリリース予定の機能やバグフィックスがほぼ反映した状態で develop から分岐する。 リリース準備が整ったら, master にマージし、タグをつける。次に develop にマージする。
- hotfix
  - リリース後のクリティカルなバグフィックスなど、 現在のプロダクトのバージョンに対する変更用。 master から分岐し、 master にマージし、タグをつける。次に develop にマージする。

<img src="https://user-images.githubusercontent.com/46508203/77295789-e4ec4e80-6d29-11ea-8608-1f24618d6b0f.png" width="500px">

- [git初心者への道 - お仕事で困らないレベルまでググっとします。 · GitHub](https://gist.github.com/yatemmma/6486028)
- [ Branchについて](https://havelog.ayumusato.com/develop/git/e513-git_branch_model.html)

## 開発をする上で知っておいてほしい基礎知識
- [http通信について](https://qiita.com/AkiyoshiOkano/items/ae4258c1caef3d9e70a2)
- [うまくメソッド名を付けるための参考情報](https://qiita.com/KeithYokoma/items/2193cf79ba76563e3db6)
- [英語のコメントや issue で頻出する略語の意味 (FYI, AFAIK, ...)](https://qiita.com/uasi/items/86c3a09d17792ab62dfe)
- [マークダウン記法 一覧表・チートシート](https://qiita.com/kamorits/items/6f342da395ad57468ae3)

## 開発で使うと便利なツール
項目 | ツール名
--- | ---
APIクライアント | Postman, Pawなど
HTTP通信キャプチャ | Charles
Gitクライアント |  Source Treeなど 

## 参考資料
- [Appleの公式ドキュメント](https://swift.org/documentation/api-design-guidelines/)
- [Qiita API v2 documentation](https://qiita.com/api/v2/docs)
- [リーダブルコード要約](https://qiita.com/AKB428/items/20e81ccc8d9998b5535d)
