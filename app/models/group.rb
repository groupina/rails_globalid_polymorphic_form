class Group < ActiveRecord::Base
  has_many :posts, as: :owner
end
