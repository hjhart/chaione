class ApiNetMessage
  def initialize(attributes)
    @attributes = attributes
  end

  def username
    attributes['user']['username']
  end

  def text
    attributes['text']
  end

  private
  attr_accessor :attributes
end