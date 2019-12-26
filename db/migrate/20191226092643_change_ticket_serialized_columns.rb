class ChangeTicketSerializedColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :tickets, :tags
    add_column :tickets, :tags, :text, array: true, default: []
  end
end
