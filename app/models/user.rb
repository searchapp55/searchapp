class User < ApplicationRecord
  self.primary_key = '_id'

  belongs_to :organization, primary_key: '_id'
  has_many :submissions, class_name: 'Ticket', primary_key: '_id', foreign_key: 'submitter_id'
  has_many :assignments, class_name: 'Ticket', primary_key: '_id', foreign_key: 'assignee_id'
end
