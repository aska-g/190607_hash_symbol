require 'json'
require 'open-uri'

url = 'https://api.github.com/users/ingeketele'

json_string = open(url).read #=> string

json_string

ruby_hash_with_data = JSON.parse(json_string)

p "Hi #{ruby_hash_with_data['login']}, your id is #{ruby_hash_with_data['id']}"
