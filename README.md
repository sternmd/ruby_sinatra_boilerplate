# Sinatra Boilerplate

A barebones Sinatra boilerplate. Create any type of application, from REST APIs to database applications.

## Git

Firstly, clone our repo down to a folder:
```git
git clone git@github.com:sternmd/ruby_sinatra_boilerplate.git your-project-directory
```

### app.rb
```rb
require 'bundler' # require bundler
Bundler.require   # loads all the gems
```

### config.ru
```rb
require './app' #loads app.rb
run Sinatra::Application # run Sinatra application class
```

### Gemfile
```rb
source 'https://rubygems.org' #grabs gems from source

gem 'sinatra' #various gems
gem 'json'
gem 'sinatra-cross_origin'
```
