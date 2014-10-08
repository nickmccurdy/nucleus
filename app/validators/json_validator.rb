class JsonValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add(attribute, 'must be valid JSON') unless json? value
  end

  def json?(str)
    !JSON.parse(str).nil?
  rescue JSON::ParserError
    false
  end
end
