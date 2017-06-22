require "main/view/controller"

module Main
  module Views
    class Welcome < Main::View::Controller
      configure do |config|
        config.template = "welcome"
      end
    end
  end
end
