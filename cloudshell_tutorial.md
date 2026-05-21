# Flutter Workshop in Cloud Shell

このチュートリアルでは、Cloud Shell Editor と Web Preview だけで Flutter workshop のテンプレートを起動します。

## セットアップ

Cloud Shell のターミナルで次を実行します。

```bash
./cloudshell_setup.sh
```

Cloud Shell にプリインストールされている `/google/flutter` が使われます。Flutter SDK はダウンロードされません。`flutter pub get` まで完了すれば準備完了です。

## アプリを起動する

Cloud Shell では Chrome デバイスではなく、Web Preview 用の web-server デバイスで起動します。

```bash
./cloudshell_run.sh
```

次のような表示が出るまで待ちます。

```text
lib/main.dart is being served at http://0.0.0.0:8080
```

Cloud Shell 右上の **Web Preview** から **Preview on port 8080** を開きます。

## コードを編集する

この workshop では、主に次のファイルを編集します。

- `lib/providers/post_providers.dart`
- `lib/feed_page.dart`
- `lib/widgets/post_card.dart`

ファイルを保存したら、起動中のターミナルで `r` を押すと Hot reload、`R` を押すと Hot restart できます。

## 終了する

起動中のターミナルで `q` を押すと Flutter の開発サーバーを終了できます。
