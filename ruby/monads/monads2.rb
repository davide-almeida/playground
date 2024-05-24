class Maybe
  def self.unit(value)
    value.nil? ? Nothing.new : Just.new(value)
  end
end

class Just < Maybe
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def bind
    yield(value)
  end
end

class Nothing < Maybe
  def bind
    self
  end
end

# ============================================

# hash de teste
data = {
  user: {
    address: {
    }
  }
}

# Sem usar Maybe Monad
# city = if data[:user] && data[:user][:address]
#   data[:user][:address][:city]
# end
# puts city || "City not found"



# Usando Maybe Monad
def fetch(hash, key)
  Maybe.unit(hash[key])
end

result = Maybe.unit(data)
            .bind { |u|
              puts "Just: #{Just.new(u).value} }"
              fetch(u, :user) # u é o valor de data[:user]
            }
           .bind { |a|
              puts "Just: #{Just.new(a).value} }"
              fetch(a, :address) # a é o valor de data[:user][:address]
            }
           .bind { |c|
              puts "Just: #{Just.new(c).value} }"
              fetch(c, :city) # c é o valor de data[:user][:address][:city]
            }

puts result.is_a?(Just) ? result.value : "City not found"
