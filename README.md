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

# idea-api DB設計
## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true, index: true|
### Association
- has_many :ideas

## ideasテーブル
|Column|Type|Options|
|------|----|-------|
|category_id|integer|null: false|
|body|text|null: false|
### Association
- belongs_to :category
