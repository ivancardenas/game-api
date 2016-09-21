class Game < ActiveRecord::Base
  scope :user, -> (user, status) { where(user_id: user).where(status: status) }
  scope :player, -> (player, status) { where(player: player).where(status: status) }
  scope :game, -> (user, player, status) { where(user_id: user).where(player: player).where(status: status) }
end
