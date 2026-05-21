# Mini Instagram Flutter Workshop Template for Cloud Shell

Flutter と Riverpod でミニ SNS フィードを作るハンズオン用テンプレートです。Google Cloud Shell でそのまま開き、Cloud Shell Editor と Web Preview だけで進められるようにしています。

[![Open in Cloud Shell](https://gstatic.com/cloudssh/images/open-btn.svg)](https://shell.cloud.google.com/cloudshell/editor?cloudshell_git_repo=https://github.com/gdsc-osaka/flutter-workshop-cloudshell.git&cloudshell_workspace=.&cloudshell_tutorial=cloudshell_tutorial.md&cloudshell_open_in_editor=lib/feed_page.dart&show=ide%2Cterminal&ephemeral=true)

## Cloud Shell Setup

Cloud Shell を開いたら、ターミナルで次を実行します。

```bash
git config --global --add safe.directory /google/flutter
flutter --version
flutter config --enable-web
flutter pub get
```

Cloud Shell には `/google/flutter` に Flutter SDK がプリインストールされており、`flutter` コマンドはそのまま使えます。Flutter SDK はダウンロードしません。

## Run in Cloud Shell

Cloud Shell では Chrome を直接起動せず、Web Preview 用の `web-server` デバイスを使います。

```bash
flutter run -d web-server --web-hostname 0.0.0.0 --web-port 8080
```

次のような表示が出たら、Cloud Shell の **Web Preview** から **Preview on port 8080** を開きます。

```text
lib/main.dart is being served at http://0.0.0.0:8080
```

## Workshop Files

参加者が主に編集するファイル:

- `lib/providers/post_providers.dart`: Firestore から投稿一覧を購読する `postsProvider` を作る
- `lib/feed_page.dart`: `postsProvider` から届いた投稿一覧を画面に並べる
- `lib/widgets/post_card.dart`: 1 件分の投稿 UI といいねボタンを作る

`TODO` コメントを順番に確認しながら編集してください。

## Verify

```bash
flutter analyze
flutter test
flutter build web
```

## Original Local Template

ローカル PC に Flutter SDK、Chrome、VS Code を入れて進める場合は、通常版テンプレートを使います。

https://github.com/gdsc-osaka/flutter-workshop
