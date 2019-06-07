# ARRAYS
students = ['inge', 'manuel', 'arne']
# indices    0.       1.        2.


# CRUD

# create
students << 'kyle'

# read
students[0] #=> 'inge'

# update
students[0] = 'william'

# delete
students.delete_at(1)


# ITERATORS

students.each do |student|
  puts student
end

students.each { |student| puts student }
