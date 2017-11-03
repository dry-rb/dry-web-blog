source "https://rubygems.org"

gem "rake"

# Web framework
gem "dry-system", "~> 0.8"
gem "dry-web", "~> 0.7"
gem "dry-web-roda", "~> 0.9"
gem "puma", "~> 3.10"
gem "rack_csrf", "~> 2.6"

gem "rack", "~> 2.0"
gem "shotgun", "~> 0.9", ">= 0.9.2"

# Database persistence
gem "pg", "~> 0.21"
gem "rom", "~> 4.0"
gem "rom-sql", "~> 2.2"

# Application dependencies
gem "commonmarker", "~> 0.16" # Markdown rendering
gem "dry-matcher", "~> 0.6"
gem "dry-monads", "~> 0.3"
gem "dry-struct", "~> 0.3"
gem "dry-transaction", "~> 0.10"
gem "dry-types", "~> 0.12"
gem "dry-validation", "~> 0.11"
gem "dry-view", "~> 0.4"
gem "slim", "~> 3.0"

group :development, :test do
  gem "pry-byebug", "~> 3.5", platform: :mri
end

group :test do
  gem "capybara", "~> 2.15"
  gem "capybara-screenshot", "~> 1.0"
  gem "codeclimate-test-reporter", "~> 1.0"
  gem "database_cleaner", "~> 1.6"
  gem "poltergeist", "~> 1.16"
  gem "rspec", "~> 3.7"
  gem "simplecov", "~> 0.13"
  gem "rom-factory", "~> 0.5"
  gem "time_math2", "~> 0.1"
end
