def banana
  puts "Hello"
  yield if block_given?  # Executa o bloco passado, se houver um
  # if block_given?
  #   yield
  # else
  #   puts "No block given"
  # end
  puts "Goodbye"
end

banana { puts "World!" }
# banana
