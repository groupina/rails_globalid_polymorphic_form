class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.references :owner, polymorphic: true, index: true

      t.timestamps null: false
    end
    add_foreign_key :posts, :owners
  end
end
