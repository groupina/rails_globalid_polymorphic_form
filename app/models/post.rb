class Post < ActiveRecord::Base
  belongs_to :owner, polymorphic: true
end
