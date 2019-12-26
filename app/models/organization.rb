class Organization < ApplicationRecord
  self.primary_key = '_id'

  has_many :users
  has_many :tickets

  serialize :domain_names, Array
  serialize :tags, Array

  SEARCHABLE_FIELDS = [
    :_id, 
    :url, 
    :external_id, 
    :name, 
    :domain_names,
    :created_at,
    :details,
    :shared_tickets,
    :tags ]
end
