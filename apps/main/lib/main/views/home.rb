require "main/import"
require "main/view/controller"
require "main/view/parts/article"

module Main
  module Views
    class Home < Main::View::Controller
      include Main::Import["persistence.articles_repo"]

      configure do |config|
        config.template = "home"
      end

      expose :articles, as: View::Parts::Article do
        articles_repo.home_page_listing
      end
    end
  end
end
