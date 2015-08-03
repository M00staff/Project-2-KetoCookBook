class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment_body
      t.string :author
      t.references :post, index: true, foreign_key: true
    end
  end
end
