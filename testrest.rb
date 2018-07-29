require 'rest-client'
require 'json'

kittens = RestClient.get("http://localhost:3000/kittens", :accept => :json)
kitten = RestClient.get("http://localhost:3000/kittens/7", :accept => :json)

puts JSON.parse kittens
puts JSON.parse kitten