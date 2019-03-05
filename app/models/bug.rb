class Bug < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
  belongs_to :others, class_name: 'User' , foreign_key: 'user_id'

  STATES = ['open', 'assigned', 'closed']
end
