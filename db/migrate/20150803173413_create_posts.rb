class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :post_body
      t.string :author
      t.string :photo_url
    end
  end
end
