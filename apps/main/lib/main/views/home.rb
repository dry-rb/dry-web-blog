require "main/import"
require "main/view/controller"

module Main
  module Views
    class Home < Main::View::Controller
      include Main::Import["repositories.articles_repo"]

      configure do |config|
        config.template = "home"
      end

      expose :articles do
        articles_repo.home_page_listing
      end
    end
  end
end
