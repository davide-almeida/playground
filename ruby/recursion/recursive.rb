# frozen_string_literal: true

require 'test/unit/assertions'
include Test::Unit::Assertions

def soma_da_boa(n)
  return 1 if n <= 1
  n + soma_da_boa(n - 1)
end

p soma_da_boa(4)

assert_equal(15, soma_da_boa(5))
assert_equal(3, soma_da_boa(2))
assert_equal(1, soma_da_boa(1))
assert_equal(1, soma_da_boa(0))
