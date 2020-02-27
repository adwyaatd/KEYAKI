class User < ApplicationRecord
  has_secure_password

  has_many :posts, dependent: :destroy
  has_many :replies

  validates :name,{presence:true,uniqueness:true}
  validates :email,
   presence:true,
   uniqueness:true,
   format: { with: /\A[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*\Z/}
   
end
