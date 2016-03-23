require 'bundler' # require bundler
Bundler.require   # loads all the gems

# Connect to database using ActiveRecord
ActiveRecord::Base.establish_connection(
  :adapter  => 'postgresql',
  :database => 'first_crud'
)

get '/' do
  erb :index # this would point to /views/filename.erb
end

get '/account' do
  @accounts                  = Account.new
  @accounts.name             = Faker::Name.name
  @accounts.email            = Faker::Internet.email
  @accounts.password_hash    = Faker::Internet.password
  @accounts.save
  Account.all.to_json
end

get '/cart' do
  @carts                = Cart.new
  @carts.product_name   = Faker::Commerce.product_name
  @carts.quantity       = 4
  @carts.price          = Faker::Commerce.price
  @carts.save
  Cart.all.to_json
end

get '/book' do
  @books               = Book.new
  @books.title         = Faker::Book.title
  @books.author        = Faker::Book.author
  @books.genre         = Faker::Book.genre
  @books.save
  Book.all.to_json
end

get '/team' do
  @teams               = Team.new
  @teams.team_name     = Faker::Team.name
  @teams.state         = Faker::Team.state
  @teams.sport         = Faker::Team.sport
  @teams.save
  Team.all.to_json
end


get '/app' do
  @apps               = App.new
  @apps.name          = Faker::App.name
  @apps.author        = Faker::App.author
  @apps.version       = Faker::App.version
  @apps.save
  App.all.to_json
end
