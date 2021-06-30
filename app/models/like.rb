class Like < ApplicationRecord
  belongs_to :user
  belongs_to :food
  validates :user_id, uniqueness: {
    scope: :food_id,
    message: "同じ投稿に2回いいねはできません。"
  }
end
