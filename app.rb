require 'bundler' # require bundler
Bundler.require   # loads all the gems

get '/' do
  erb :index # this would point to /views/filename.erb
end
