class Post < ApplicationRecord
  belongs_to :user
  belongs_to :group
  after_create_commit { MessageBroadcastJob.perform_later self }
end
