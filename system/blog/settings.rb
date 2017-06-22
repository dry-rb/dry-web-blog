require "dry/web/settings"
require "types"

module Blog
  class Settings < Dry::Web::Settings
    setting :database_url, Types::Strict::String.constrained(filled: true)
    setting :session_secret, Types::Strict::String.constrained(filled: true)
  end
end
