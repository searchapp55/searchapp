class Ticket < ApplicationRecord
  self.primary_key = '_id'
  self.inheritance_column = :_type_disabled

  belongs_to :organization
  belongs_to :submitter, class_name: 'User'
  belongs_to :assignee, class_name: 'User'

  serialize :tags, Array
end
