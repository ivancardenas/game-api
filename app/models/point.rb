class Point < ActiveRecord::Base
  scope :game_id, -> (game_id) { where game_id: game_id }
end
