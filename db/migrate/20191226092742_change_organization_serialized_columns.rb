class ChangeOrganizationSerializedColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :organizations, :tags
    add_column :organizations, :tags, :text, array: true, default: []
    remove_column :organizations, :domain_names
    add_column :organizations, :domain_names, :text, array: true, default: []
  end
end
