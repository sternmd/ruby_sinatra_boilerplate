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
  @accounts              = Account.new
  @accounts.name         = Faker::Name.name
  @accounts.email        = Faker::Internet.email
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

get '/profiles' do
  @profiles               = Profile.new
  @profiles.name          = Faker::Name.name
  @profiles.profile_about = Faker::Lorem.sentence
  @profiles.age           = Faker::Number.between(21, 100)
  @profiles.save
  Profile.all.to_json
end
