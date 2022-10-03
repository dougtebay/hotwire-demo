class Widget < ApplicationRecord
  after_create_commit { broadcast_append_to 'widgets' }
  after_update_commit { broadcast_replace_to 'widgets' }
  after_destroy_commit { broadcast_remove_to 'widgets' }
end
