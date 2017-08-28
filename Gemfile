source 'https://rubygems.org'
ruby '2.4.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
# SEMVER -major, minor, patch
# MAJOR - breaking changes
# MINOR - backwards compat - smaller changes to the gem
# PATCH - backwards compat - typo changes or readme adds or reallyl really small changes

# ~> - minor patch pen = ONLY UPDATE MINOR AND PATCH VERSIONS
# strict pin = NEVER UPDATE
# lteq gteq pin =
gem 'rails', '~> 5.1.3'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'

# 3 different environments in rails
# 3 different databases in the rails project
# 
# 1. DEFAULT ENV - development
# 2. test environment
# 3. production environment

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Call 'binding.pry' anywhere in the code to stop execution and get a debugger console
  gem 'pry'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
