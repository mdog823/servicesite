class Opp < ActiveRecord::Base
  attr_accessible :title

  validates :title, presence: true

  belongs_to :user
  validates :user_id, presence: true
end
