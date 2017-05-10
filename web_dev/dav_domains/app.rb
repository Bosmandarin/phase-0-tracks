# require gems

require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("domains.db")
db.results_as_hash = true

# Show student information on home page

get '/' do
  @domains = db.execute("SELECT * FROM domaininformation")
  erb :home
end

get '/domain/new' do
  erb :new_domain_form

end

post '/students' do
  db.execute("INSERT INTO domaininformation (studentname, websitename, Hyperlink, Category)
  VALUES (?,?,?,?)", [params['studentname'],
  params['websitename'], params['Hyperlink'], params['Category'] ])
  redirect '/'
end
