class ChangeIdColumnOnUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :_id, 'integer USING CAST(_id AS integer)'
  end
end
