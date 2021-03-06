# アプリ名：KEYAKI
掲示板サイトです。
「3日でDocker、ECSを習得して掲示板サイトを作り、デプロイする」というチャレンジで作りました。

優先順位の高い機能から実装したため、
UIやデザインの改良は現在作業中です。  
URL:https://keyaki-h2.herokuapp.com/

2つ目のオリジナルWEBアプリです。
1つ目はこちらです。 
→https://github.com/adwyaatd/TUMIKI

# 機能一覧 
1. ログイン・ログアウト機能 
2. 閲覧・投稿機能 
3. スレッド機能 (スレッドにレスをつけていくスタイル) 
4. カテゴリ設定機能(スレッドごと / 1つのスレッドに複数付与可能) 
5. 検索機能 (スレッド/コメントの検索) 
6. 画像保存機能

# 【追加中の主要機能】
* ECS,ECRを使用したデプロイ（設定・コンテナ稼働までは達成。WEB上で表示されない問題を解決中）

# 【その他】
* GitHub　issue、Pull Requestでチーム開発を仮想して管理を行っています。

# 使用技術
* Ruby
* Ruby on Rails
* AWS
    * ECS
    * ECR
    * ALB
    * Route53
    * VPC
    * EC2
    * RDS
    * S3
* Docker
* nginx
* HTML
* SASS
* Bootstrap
* jQuery
* Mysql

【テスト環境】  
* RSpec
* Capybara
* Selenium
* FactoryBot
