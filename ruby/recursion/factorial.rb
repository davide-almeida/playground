# frozen_string_literal: true

require 'test/unit/assertions'
include Test::Unit::Assertions

def fact(n)
  return 1 if n <= 1
  n * fact(n - 1)
end

p fact(4)

assert_equal(120, fact(5))
assert_equal(2, fact(2))
assert_equal(1, fact(1))
assert_equal(1, fact(0))
