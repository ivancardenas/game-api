class User < ActiveRecord::Base
  scope :status, -> (status) { where status: status }
  scope :online, -> (user, status) { where(user_id: user).where(status: status) }
end
