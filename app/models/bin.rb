class Bin < ActiveRecord::Base
  validates :title, presence: true
  validates :body, json: true
end
