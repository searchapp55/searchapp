class Ticket < ApplicationRecord
  self.primary_key = '_id'
  
  belongs_to :organization
  belongs_to :submitter, class_name: 'User'
  belongs_to :assignee, class_name: 'User'
end
