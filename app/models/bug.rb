class Bug < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
  belongs_to :others, class_name: 'User' , foreign_key: 'user_id'
  scope :severity_ordered, -> { order("CASE bugs.severity WHEN 'HIGH' THEN 'a' WHEN 'MEDIUM' THEN 'b' WHEN 'LOW' THEN 'c' ELSE 'z' END ASC, id ASC") }
  STATES = ['open', 'assigned', 'closed']
  SEVERITIES = ['HIGH', 'MEDIUM', 'LOW', 'Other']
end


