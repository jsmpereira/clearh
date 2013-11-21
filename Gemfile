source 'https://rubygems.org'

ruby '2.0.0'

# Distribute your app as a gem
# gemspec

# Server requirements
# gem 'thin' # or mongrel
# gem 'trinidad', :platform => 'jruby'

# Optional JSON codec (faster performance)
# gem 'oj'

# Project requirements
gem 'rake'

# Component requirements
gem 'therubyracer'
gem 'rack-less'
gem 'less'
gem 'slim'
gem 'activerecord', '>= 3.1', :require => 'active_record'
gem 'pg'

# Test requirements

group :test do
	gem 'mocha', :require => false
	gem 'minitest', '~>2.6.0', :require => 'minitest/autorun'
	gem 'rack-test', :require => 'rack/test'
	gem 'guard'
	gem 'guard-minitest'
	gem 'launchy'
end

# Padrino Stable Gem
gem 'padrino', '0.11.4'

# Or Padrino Edge
# gem 'padrino', :github => 'padrino/padrino-framework'

# Or Individual Gems
# %w(core gen helpers cache mailer admin).each do |g|
#   gem 'padrino-' + g, '0.11.4'
# end
