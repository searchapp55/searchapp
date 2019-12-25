class Organization < ApplicationRecord
  self.primary_key = '_id'

  has_many :users
  has_many :tickets

  serialize :domain_names, Array
  serialize :tags, Array
end
