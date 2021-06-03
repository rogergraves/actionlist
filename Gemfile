source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'
gem 'activeadmin'
gem 'amazing_print', '~> 1.3'       # Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'bootsnap', '>= 1.4.4', require: false # Reduces boot times through caching; required in config/boot.rb
gem 'devise', '~> 4.2'
gem 'jbuilder', '~> 2.7'
gem 'pg', '~> 1.1'                  # Use Puma as the app server
gem 'puma', '~> 5.0'                # Use SCSS for stylesheets
gem 'rails', '~> 6.1.3'             # Use postgresql as the database for Active Record
gem 'sass-rails', '>= 6'            # Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'turbolinks', '~> 5'            # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]  # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'webpacker', '~> 5.0'           # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks

group :development do
  gem 'listen', '~> 3.3'              # Display performance information such as SQL time and flame graphs for each request in your browser.
  gem 'rack-mini-profiler', '~> 2.0'  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'spring'                        # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'web-console', '>= 4.1.0'       # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker', github: 'stympy/faker'
  gem 'rspec-rails' # Call 'byebug' anywhere in the code to stop execution and get a debugger console
end

