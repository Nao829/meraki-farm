# GitHub Pages でのWebサイト公開手順

GitHubを使って、作成したWebサイト（米良氣農園HP）を無料で世界に公開する手順です。

## 1. GitHubアカウントの作成（未登録の場合）
まだお持ちでない場合は、[GitHub](https://github.com/) にアクセスし、「Sign up」からアカウントを作成してください。

## 2. 新しい「リポジトリ」を作成する
Webサイトのファイルを入れるための「箱（リポジトリ）」を作ります。

1.  GitHubにログインし、画面右上の「＋」アイコンをクリックし、「**New repository**」を選択します。
2.  **Repository name**: 好きな名前を入力します（例: `meraki-farm`）。
3.  **Public**（公開）を選択します（無料版GitHub Pagesを使うために必須です）。
4.  「Initialize this repository with a README」などのチェックは**外したまま**にします（空っぽの箱を作ります）。
5.  緑色の「**Create repository**」ボタンをクリックします。

## 3. ファイルをアップロードする

### 方法A：かんたんアップロード（ブラウザ操作）
黒い画面（コマンドライン）が苦手な場合はこちらがおすすめです。

1.  作成したリポジトリの画面に表示される「**uploading an existing file**」という青いリンクをクリックします。
2.  画面が変わったら、デスクトップにある `米良氣農園HP最新` フォルダの中身（`index.html` や `css` フォルダなどすべて）を、ブラウザの枠内にドラッグ＆ドロップします。
3.  アップロードが終わるのを待ちます。
4.  下の「Commit changes」というボックスに、「サイト公開」などと記入し、「**Commit changes**」ボタンをクリックします。

### 方法B：本格アップロード（Gitコマンド）
将来的にファイルを更新しやすくするための、推奨される方法です。

1.  作成したリポジトリの画面にある「HTTPS」のURL（例: `https://github.com/username/meraki-farm.git`）をコピーします。
2.  このチャットで、そのURLを私（AI）に教えてください。私が以下のコマンドを実行してアップロードを代行・補助します。

    ```bash
    git init
    git add .
    git commit -m "Initial commit"
    git branch -M main
    git remote add origin <あなたのリポジトリURL>
    git push -u origin main
    ```

## 4. Webサイトとして公開設定（GitHub Pages）
ファイルがリポジトリに入ったら、最後に公開スイッチをオンにします。

1.  リポジトリ画面の上部にある「**Settings**（設定）」タブをクリックします。
2.  左側のメニューから「**Pages**」をクリックします。
3.  **Source**: 「Deploy from a branch」になっていることを確認します。
4.  **Branch**: 「None」を「**main**」に変更し、隣のフォルダは「/(root)」のまま、「**Save**」ボタンをクリックします。
5.  ページ上部に「GitHub Pages source saved.」と表示されれば成功です。
6.  数分待ってからページをリロードすると、「**Your site is live at...**」と表示され、あなたのWebサイトのURLが発行されます！

---

## 5. 更新したいとき
サイトの内容を変更したときは、同じ手順でファイルを再度アップロード（または `git push`）するだけで、数分後に自動的に本番サイトも更新されます。
