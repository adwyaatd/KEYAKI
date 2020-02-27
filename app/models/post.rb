class Post < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  has_many :replies
  has_many :post_category_relations
  has_many :categories, through: :post_category_relations

  validates :theme, {presence: true, length: {maximum: 150}}

  def self.search(search)
    if search
      Post.where(['theme LIKE ?', "%#{search}%"])
    else
      Post.all
    end
  end
end
