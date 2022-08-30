class List < ApplicationRecord
  has_many :list_users
  has_many :users, through: :list_users

  validates :title, presence: true

  after_create_commit { broadcast_prepend_to 'lists' }
  after_update_commit { broadcast_replace_to 'lists' }
end
