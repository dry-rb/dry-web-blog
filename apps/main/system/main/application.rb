require "dry/web/roda/application"
require_relative "container"

module Main
  class Application < Dry::Web::Roda::Application
    configure do |config|
      config.container = Container
      config.routes = "web/routes".freeze
    end

    opts[:root] = Pathname(__FILE__).join("../..").realpath.dirname

    use Rack::Session::Cookie, key: "main.session", secret: self["core.settings"].session_secret

    plugin :csrf, raise: true
    plugin :dry_view
    plugin :flash
    plugin :multi_route

    route do |r|
      r.multi_route

      r.root do
        r.view "home"
      end
    end

    # Request-specific options for dry-view context object
    def view_context_options
      {
        flash:        flash,
        csrf_token:   Rack::Csrf.token(request.env),
        csrf_metatag: Rack::Csrf.metatag(request.env),
        csrf_tag:     Rack::Csrf.tag(request.env),
      }
    end

    load_routes!
  end
end
