class Widget < ApplicationRecord
  after_create_commit do
    broadcast_append_to 'widgets'
    broadcast_update_to 'notification', target: 'notification', partial: 'widgets/notification', locals: { widget: self }
  end
  after_update_commit { broadcast_replace_to 'widgets' }
  after_destroy_commit { broadcast_remove_to 'widgets' }
end
