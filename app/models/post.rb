class Post < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  has_many :replies
  has_many :post_category_relations
  has_many :categories, through: :post_category_relations

  validates :theme, {presence: true, length: {maximum: 150}}

  def self.search(search,post_or_reply)
    if post_or_reply == "1"
      Post.where(["theme LIKE ? OR text LIKE ?", "%#{search}%","%#{search}%"])
    else
      Post.all
    end
  end
end
