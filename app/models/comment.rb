class Comment < ApplicationRecord

  #アソシエーションを記述
  belongs_to :user
  belongs_to :prototype

  #バリデーションを記述
  validates :text, presence: true

end