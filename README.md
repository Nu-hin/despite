# Despite

This gem introduces new advanced verbose flow-control operators to Ruby language.

## Description

Have you ever been shown a git blame output with your name and a question: _"What will happen if this is nil?"_ or _"Have you thought of the case when there are no orders for a customer?"_ or _"What if they haven't entered their mobile phone?"_.

This gem is designed to stop these stupid questions forever. With `despite` and `even_if` operators introduced by it, is has finally became possible to explicitly and verbosely designate pieces of code you are aware to be faulty as well as to show you don't give a fuck.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'despite'
```

Or, if you would like just to install this gem globally, execute:
```bash
gem install despite
```

## Usage
The purpose of the `despite` operator is to explicitly demonstrate, that you are aware of some problem or potential error, but you are conciously ignoring it and its possible negative consequences.

The `despite` operator accepts an expression and a block. If expression evaluates to `true` the block is executed and the result of the block is returned.

The typical usage would be:
```ruby
# Divide by zero openly and proudly
y = 0

despite y == 0 do
  #ZeroDivisionError is raised
  puts x / y
end
```

If no block is passed, the operator will return the result of the expression:

```ruby
  x = despite(5) # x == 5
```

Thus it is possible to chain `despite` calls:

```ruby
  share = nil

  despite(users.count == 0) && despite(total_income.nil?) do
    # Dividing nil by zero!
    avg_income = total_income / users.count
  end
```

The `despite` operator is designed to be used only with true expressions. By using it, you are saying: _"Yes, I know that the X is true, but despite that I am going to do Y."_ Thus, if the condition evaluates to `false`, it is considered to be an error in the code, and `Despite::AssertionError` exception is raised.

```ruby
  user.name = 'Donald'

  # Despite::AssertionError
  despite user.name.nil? do
     puts user.name
  end
```

However, this behavior is not always desired. Sometimes you cannot be sure the problem is there, but you still would like to demonstrate, that you are aware of the possible negative outcome. For this, `even_if` operator is provided.

The usage of `even_if` operator is similar to that of the `despite` operator, except for it doesn't check the value of the condition, and thus the block passed is executed __no matter what__ the condition is.

With `even_if` operator you are saying: _"Yes, I am aware that there might be some problem, but I am going to execute this code whatsoever."_

```ruby
  # This even may occasionally work!
  sale_price = even_if product.nil? do
    product.price * 0.95
  end
```

## Contributing

Feature requests and bug reports are welcome here at GitHub. However if you want to contribute, make sure your pull request passes all the tests, and the new features are 100% covered by tests too. Also make sure you have no warnings with the default [Rubocop](https://github.com/bbatsov/rubocop) configuration. We are aimed to the highest coding standards only!


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

