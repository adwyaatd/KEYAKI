class Post < ApplicationRecord
  belongs_to :user
  has_many :replies

  validates :theme, {presence: true, length: {maximum: 150}}
  validates :user_id,{presence: true}

  def self.search(search)
    if search
      Post.where(['theme LIKE ?', "%#{search}%"])
    else
      Post.all
    end
  end
end
