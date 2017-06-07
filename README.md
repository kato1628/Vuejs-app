# Railsに既存仕様を維持したまま少しずつvuejs-railsいれてみる
- vuejs-rails => https://github.com/adambutler/vuejs-rails
- `/user/:id/edit` の[フォーム部分](https://github.com/kato1628/Vuejs-app/blob/master/app/views/users/_form.html.erb)をvuejsで記述（`/user/:id/edit`以外はscaffoldの資源なので無視してください）
- html内のinputタグをv-modelディレクィブを使ってvueインスタンスのdataとバインディング
- リソース取得はAPIではなくコントローラーのインスタンス変数から取得
  - 既存仕様（非同期SPAでない、同期POST処理、画面遷移を挟む処理が資源の深くまで組み込まれてる、外部APIをたたいて成功/失敗をもとに画面を出し分けたいなど）は維持したい
  - バリデーションエラーをインスタンス変数に入れて画面表示している場合、APIリソース取得方式だとエラーメッセージなどをAPIで取得するのがツライ
  - バリデーションエラー後にエラーメッセージが入ったインスタンス変数をredisなどにいれて、APIで取得してもいいがそこまでやる??（反語）

※伝えたいこと以外のファイルが多くごめんなさい。
