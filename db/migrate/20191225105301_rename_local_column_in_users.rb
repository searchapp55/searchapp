class RenameLocalColumnInUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :local, :locale
  end
end
