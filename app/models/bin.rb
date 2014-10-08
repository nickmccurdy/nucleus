require 'json'

class Bin < ActiveRecord::Base
  validates :title, presence: true
  validate :json_body

  private

  def json?(str)
    !JSON.parse(str).nil?
  rescue JSON::ParserError
    false
  end

  def json_body
    errors.add(:body, 'must be valid JSON') unless json? body
  end
end
