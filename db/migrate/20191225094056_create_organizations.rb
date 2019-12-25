class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.integer :_id, unique: true
      t.string :url
      t.string :external_id
      t.string :name
      t.text :domain_names
      t.string :details
      t.boolean :shared_tickets
      t.text :tags

      t.timestamps
    end

    add_index :organizations, :_id, unique: true
  end
end
