class Point < ActiveRecord::Base
  scope :game_id, -> (game) { where game_id: game }
end
