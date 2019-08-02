class ChangePasswordToImage < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :password, :image
  end
end
