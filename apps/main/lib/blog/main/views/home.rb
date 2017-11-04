require "blog/main/import"
require "blog/main/view/controller"
require "blog/main/view/parts/article"

module Blog
  module Main
    module Views
      class Home < Main::View::Controller
        include Import["article_repo"]

        configure do |config|
          config.template = "home"
        end

        expose :articles, as: View::Parts::Article do
          article_repo.listing
        end
      end
    end
  end
end
