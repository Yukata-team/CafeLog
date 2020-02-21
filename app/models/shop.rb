class Shop < ApplicationRecord
  has_many :posts, dependent: :destroy
  validates :name, presence: true, length: {maximum: 30}
  validates :station_name, presence: true, length: {maximum: 20}

  def posts
    return Post.where(shop_id: self.id)
  end
  def post
    return Post.find_by(shop_id: self.id)
  end
end
