# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM)

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("friends.db")
db.results_as_hash = true

# learn about fancy string delimiters
create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS kittens(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255)
  )
SQL

# create a kittens table (if it's not there already)
db.execute(create_table)

# add a test kitten
# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")

# add LOOOOTS of kittens!
# so. many. kittens.
#KittenExplosion
def make_friends(db, name, email)
  db.execute("INSERT INTO friends (name, email) VALUES (?, ?)", [name, email])
end

200.times do
  make_friends(db, Faker::Name.name, Faker::Internet.email())
end

# explore ORM by retrieving data
friends = db.execute("SELECT * FROM friends")
friends.each do |friend|
 puts "#{friend['name']} is a friend of yours and you van reach him/her on #{friend['email']}"
end
