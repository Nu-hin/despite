require 'despite/version'

# Encapsulates new operator methods which are later included in
# the global context
module Despite
  AssertionError = Class.new(StandardError)

  def even_if(expression)
    block_given? ? yield : expression
  end

  def despite(expression)
    raise AssertionError unless expression
    block_given? ? yield : expression
  end
end

include Despite
