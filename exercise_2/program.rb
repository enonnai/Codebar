require_relative "lib/tutorial.rb"

tutorial1 = Tutorial.new("Ruby", :ruby, :medium)
tutorial2 = Tutorial.new("More ruby", :ruby, :expert)
tutorial3 = Tutorial.new("Javascript", :javascript, :easy)

puts tutorial1.is_harder_than?(tutorial2)
puts tutorial2.is_harder_than?(tutorial3)
