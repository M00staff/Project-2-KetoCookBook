class AddUsersToComments < ActiveRecord::Migration
  def change
    # i like that you added migrations rather than change the columns in the
    # original migration. This is definitely good practice going forward.
    add_column :comments, :user_id, :integer
  end
end
