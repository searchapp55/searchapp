class Ticket < ApplicationRecord
  self.primary_key = '_id'
  self.inheritance_column = :_type_disabled

  belongs_to :organization
  belongs_to :submitter, class_name: 'User'
  belongs_to :assignee, class_name: 'User'

  serialize :tags, Array

  SEARCHABLE_FIELDS = [
    :_id, 
    :url,
    :external_id,
    :created_at,
    :type,
    :subject,
    :description,
    :priority,
    :status,
    :submitter_id,
    :assignee_id,
    :organization_id,
    :tags,
    :has_incidents,
    :due_at,
    :via ]
end
