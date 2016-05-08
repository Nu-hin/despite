require 'despite/version'

DespiteAssertionError = Class.new(StandardError)

def even_if(expression)
  block_given? ? yield : expression
end

def despite(expression)
  raise DespiteAssertionError unless expression
  block_given? ? yield : expression
end
