class Post < ActiveRecord::Base
  belongs_to :owner, polymorphic: true

  def global_owner
    self.owner.to_global_id if self.owner.present?
  end

  def global_owner=(owner)
    self.owner = GlobalID::Locator.locate owner
  end
  
end
