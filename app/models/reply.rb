class Reply < ApplicationRecord
 belongs_to :user
 belongs_to :post,optional: true

end
