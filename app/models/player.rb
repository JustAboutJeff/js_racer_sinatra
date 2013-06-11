class Player < ActiveRecord::Base
  validate :initials, :presence   => true,
                      :limit      => 3,
                      :uniqueness => true
  has_and_belongs_to_many :games
end
