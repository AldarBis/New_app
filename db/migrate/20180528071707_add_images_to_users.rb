class AddImagesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :images, :string
  end
end
