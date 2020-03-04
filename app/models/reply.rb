class Reply < ApplicationRecord
 belongs_to :user
 belongs_to :post,optional: true

 def self.search(search,post_or_reply)
  if post_or_reply == "2"
    Reply.where(["text LIKE ?","%#{search}%"])
  else
    Reply.all
  end
 end
end
