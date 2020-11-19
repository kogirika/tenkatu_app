# README

## アプリ名
Tenkatu_app
<br /><br />


## 概要
転職活動の進捗等を管理できます。
<br /><br />

## 本番環境
| 項目                                                      | 内容                       |
| --------------------------------------------------------- | -------------------------- |
| URL                                                       |                            |
| Basic認証のIDとパスワード                                 | admin<br>2323              |
| 出品者用のメールアドレスとパスワード<br>ニックネーム:hoge | hoge@example.com<br>hoge12 |
<br /><br />

## 制作背景
応募した会社、状況、日程などを入れることで転職活動を管理します。
悩み : 複数のエージェントと転職活動を行うと、管理が煩雑になってしまうという問題がありました。
解決 : 選考状況を入力することで見やすい表にし、会社情報や面接メモ等を確認できるようにします。
<br /><br />


## DEMO
<img src="" width="480px">
<br />


## 工夫したポイント
- 簡単な登録を目指し、メイン画面での登録を行えるようにしました。
- 詳細な登録は別画面で行えるようにしました。
- 詳細画面で登録するような企業の要約と行った情報もマウスオーバーで確認できるようにしました。
- Bootstrap4を用いてわかりやすいデザインを目指しました。
- fontawesomeを用いてわかりやすいアイコン使用を目指しました。
- 他のユーザーの情報を出さない、urlでも飛べないように設定しました。
<br /><br />

## 使用技術(開発環境)
#### バックエンド
Ruby, Ruby on Rails

#### フロントエンド
HTML,CSS,JavaScript,Bootstrap4,fontawesome

#### データベース
MySQL SequelPro

#### インフラ
Heroku

#### サーバ（本番環境）
Heroku

#### ソース管理
GitHub, GitHubDesktop,Git Graph

#### テスト
RSpec

#### エディタ
VScode

#### 上記以外の使用Gem
factory_bot_rails
faker
rubocop
rails-i18n
active_hash
devise
awesome_print
better_errors
binding_of_caller
forgery_ja"
<br /><br />

## 課題や今後実装したい機能
- 検索機能
- 応募数等の情報を見られるもの
- 情報のダウンロード機能
<br /><br />

## 画面遷移図
<img src="https://user-images.githubusercontent.com/67131613/99678708-76c97880-2abe-11eb-9229-ca12a3e708cb.jpg" width="960px">
<br />

## テーブル設計
#### ER図
<img src="https://user-images.githubusercontent.com/67131613/99678676-703b0100-2abe-11eb-8fa2-a92bfcff2c41.jpg" width="960px">
<br />

#### users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |


###### Association

- has_many :selections, dependent: :destroy

#### Selections テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| user           | references | null: false, foreign_key: true |
| company_name   | string     | null: false                    |
| position       | integer    | null: false                    |
| agent          | string     |                                |
| entry_day      | date       | null: false                    |
| phase_id       | integer    |                                |
| live_flg       | text       |                                |
| refusal_reason | text       |                                |
| place          | text       |                                |
| url            | text       |                                |
| sumally        | text       |                                |
| appeal         | text       |                                |
| anxiety        | text       |                                |
| memo           | text       |                                |

##### Association

- belongs_to :user
- has_many :interviews, dependent: :destroy

#### Interviews テーブル

| Column        | Type        | Options                        |
| ------------- | ----------- | ------------------------------ |
| selection     | refeÎrences | null: false, foreign_key: true |
| interview_day | date        | null: false                    |
| charge        | string      |                                |
| memo          | text        |                                |

##### Association

- belongs_to :selection

<!-- This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions -->