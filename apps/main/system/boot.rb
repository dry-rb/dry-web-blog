require_relative "blog/main/container"

Blog::Main::Container.finalize!

require "blog/main/web"
