class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  # バリデーション
  validates :name, presence: true
  validates :profile, presence: true
  validates :occupation, presence: true
  validates :position, presence: true

  # アソシエーション
  has_many :prototypes, dependent: :destroy # 1人のユーザーは複数のプロトタイプを持つ
  has_many :comments, dependent: :destroy # 1人のユーザーは複数のコメントを持つ

end
