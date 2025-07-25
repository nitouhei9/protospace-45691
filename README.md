# テーブル設計

## users テーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false |
| encrypted_password | string | null: false |
| name               | string | null: false, unique: true |
| profile            | text   | null: false |
| occupation         | text   | null: false |
| position           | text   | null: false |

### Association
- has_many :prototypes
- has_many :comments

## prototypeテーブル
| Column      | Type        | Options                        |
| ----------- | ----------- | ------------------------------ |
| name        | string      | null: false                    |
| catch_copy  | text        | null: false                    |
| concept     | text        | null: false                    |
| user        | references  | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :comments
- has_one_attached :image

## comments テーブル
| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| content     | text       | null: false                    |
| prototype   | references | null: false, foreign_key: true |
| user        | references | null: false, foreign_key: true |

### Association
- belongs_to :prototype
- belongs_to :user



