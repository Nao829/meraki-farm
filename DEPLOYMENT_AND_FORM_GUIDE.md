# Webサイト公開＆お問い合わせフォーム実装ガイド

米良氣農園のホームページを全世界に公開し、お客様からのお問い合わせを受け付けられるようにするための手順書です。

---

## 1. Webサイトをインターネットに公開する（サーバーへのアップロード）

HTMLで作られた静的なサイト（今回のようなサイト）を最も簡単かつ無料で公開するには、**「Netlify（ネットリファイ）」** というサービスがおすすめです。

### 手順（Netlify Drop を使う方法）

1.  **フォルダの準備**
    *   デスクトップにある `米良氣農園HP最新` フォルダを開きます。
    *   このフォルダの中に `index.html`, `css`, `js`, `images` などが入っていることを確認してください。
    *   **重要**: アップロードするのは「フォルダごと」です。

2.  **Netlifyにアクセス**
    *   ブラウザで [Netlify Drop](https://app.netlify.com/drop) にアクセスします。
    *   （初回はアカウント登録が必要な場合があります。GitHubアカウントやメールアドレスで無料で登録できます）

3.  **ドラッグ＆ドロップ**
    *   `米良氣農園HP最新` フォルダを、Netlifyの画面上の「Drag and drop your site output folder here」というエリアにドラッグ＆ドロップします。

4.  **公開完了**
    *   数秒〜数十秒でアップロードが完了し、ランダムなURL（例: `https://stunning-meraki-123456.netlify.app`）が発行されます。
    *   このURLをクリックすれば、スマホや他のPCからでもサイトが見られるようになります。

5.  **独自ドメインの設定（任意）**
    *   もし `meraki-farm.com` のような独自ドメインをお持ちの場合（または取得したい場合）は、Netlifyの管理画面「Domain settings」から設定が可能です。

---

## 2. お問い合わせフォームの実装（Googleフォーム）

「お問い合わせ」ボタンを押した時に、メールソフトが立ち上がるのではなく、入力フォームを表示させたい場合は、Googleフォームを埋め込むのが一番手軽で確実です。

### 手順A：Googleフォームを作成する

1.  Googleアカウントにログインし、[Googleフォーム](https://docs.google.com/forms/) を開きます。
2.  「空白」から新しいフォームを作成します。
3.  タイトルを「米良氣農園 お問い合わせ」などに変更します。
4.  必要な質問項目を追加します。
    *   お名前（記述式）
    *   メールアドレス（記述式）
    *   お問い合わせ内容（段落）
5.  右上の「送信」ボタンをクリックします。
6.  送信方法のアイコンの中から「< >」（埋め込み）タブを選びます。
7.  表示された「HTMLをコピー」をクリックしてコピーします。
    *   幅（width）は `100%` に書き換えるのがベストですが、そのままでもPCでは表示されます。後述のコードで調整します。

### 手順B：ホームページに埋め込む

コピーしたコードを `index.html` に貼り付けます。

1.  `index.html` をテキストエディタで開きます。
2.  `id="contact"` のセクションを探します（一番下にあります）。
3.  現在の内容は以下のようになっています：

```html
<section id="contact" class="contact section-padding bg-dark">
    <div class="container center-align white-text">
        <h3 class="contact-title">お問い合わせ</h3>
        <p class="contact-text">
            農園へのご質問や、商品についてなど<br>
            お気軽にお問い合わせください。
        </p>
        <a href="mailto:info@merakifarm.com" class="btn-outline">Contact Us</a>
    </div>
</section>
```

4.  これを、以下のように書き換えます（`<iframe>...</iframe>` の部分は、Googleフォームからコピーしたコードに置き換えてください）。

```html
<section id="contact" class="contact section-padding bg-light"> <!-- 背景を白に変更 -->
    <div class="container">
        <div class="section-header center-align">
            <span class="section-label">Contact</span>
            <h3 class="section-title">お問い合わせ</h3>
        </div>
        
        <!-- Googleフォーム埋め込みエリア -->
        <div class="contact-form-wrapper" style="max-width: 640px; margin: 0 auto;">
            <!-- ここにGoogleフォームのコードを貼り付け -->
            <iframe src="https://docs.google.com/forms/d/e/......" width="640" height="800" frameborder="0" marginheight="0" marginwidth="0">読み込んでいます…</iframe>
        </div>
    </div>
</section>
```

### 補足：スマホ対応のコツ

Googleフォームの埋め込みコードには `width="640"` のように固定幅が指定されています。
これをスマホでも綺麗に見せるには、貼り付けた後に `width="100%"` に書き換えると、画面幅に合わせて伸縮するようになります。

```html
<iframe src="..." width="100%" height="800" ...> 
```
