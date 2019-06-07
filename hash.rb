students = ['inge', 'manuel', 'arne']
nationalities = ['belgian', 'french', 'norwegian']


# inge is belgian

students.each do |student|
  "#{student} is #{nationalities[students.index(student)]}"
end

nationalities_hash = {
  # key => value
  'inge' => 'belgian',
  'manuel' => 'french',
  'arne' => 'norwegian'
}


# CRUD

# create
nationalities_hash['nathan'] = 'american'

# read
nationalities_hash['inge']

# update
nationalities_hash['manuel'] = 'argentinian'

# delete
nationalities_hash.delete('nathan')


# EACH

nationalities_hash.each do |name|
  name #=> ["inge", "belgian"]
end

nationalities_hash.each do |student, nationality|
  "#{student} is #{nationality}"
end



# KEYS

nationalities_hash.keys #=> ["inge", "manuel", "arne"]

# VALUES

nationalities_hash.values #=> ["belgian", "argentinian", "norwegian"]

# KEY?

nationalities_hash.key?('inge') #=> true
nationalities_hash.key?('nathan') #=> false


# VALUE?

nationalities_hash.value?('belgian') #=> true







# HASH AS LAST ARGUMENT OF A METHOD





# def tag(tag_name, content, attributes=nil)
#   if attributes.nil?
#     "<#{tag_name}>#{content}</#{tag_name}>"
#   else
#     "<#{tag_name} #{attributes}>#{content}</#{tag_name}>"
#   end
# end

# puts tag('h1', 'Hello world')

# puts tag('h1', 'Hello world', 'color="red"')




def tag(tag_name, content, attrs={})
  attrs_string = attrs.map { |k, v| "#{k}='#{v}'" }.join

  return "<#{tag_name} #{attrs_string}>#{content}</#{tag_name}>"
end



puts tag('h1', 'Hello world', {'color' => "red", 'border' => '2px solid red'})

puts tag('h1', 'Hello world')
































































