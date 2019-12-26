class ChangeUserSerializedColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :tags
    add_column :users, :tags, :text, array: true, default: []
  end
end
