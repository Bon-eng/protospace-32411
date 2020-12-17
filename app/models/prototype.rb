class Prototype < ApplicationRecord

  #アソシエーションを記述,dependentオプションでprototypeが削除されたらコメントも消えるように
  has_many :comments, dependent: :destroy
  belongs_to :user

  #imageカラムとのアソシエーション
  has_one_attached :image

  #バリデーションを記述
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true

end