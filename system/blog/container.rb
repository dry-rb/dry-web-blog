require "dry/web/container"

module Blog
  class Container < Dry::Web::Container
    configure do
      config.name = :blog
      config.listeners = true
      config.default_namespace = "blog"
      config.auto_register = %w[lib/blog]
    end

    load_paths! "lib"
  end
end
