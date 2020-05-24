# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## contact-book DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_code|integer|null: false|
|name|string|null: false, index: true|
### Association
- has_many :comments
- belongs_to :process
<!-- - has_many :contacts, through: :contacts_employees
## usersテーブルからcontacts_employeesテーブルを経由してgroupsテーブルに繋ぐアソシエーション -->

## processesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|user_id|references|null: false, foreign_key: true|
|contact_id|string|null: false, foreign_key: true|
### Association
- has_many :contacts
- has_many :users

## contactsテーブル
|Column|Type|Options|
|------|----|-------|
|processes_id|references|null: false, foreign_key: true|
|name|string|null: false|
### Association
- belongs_to :plocess
- has_many :comments

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|image_id|references|null: false, foreign_key: true|
|contact_id|references|null: false, foreign_key: true|
|user_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :contact

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|contact_id|references|null: false, foreign_key: true|
### Association
- has_many :comments


## employee従業員 チャットスペースのユーザー
## string 文字列
## foreign_key外部キー
## references 参照