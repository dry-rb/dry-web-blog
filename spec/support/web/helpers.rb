module Test
  module WebHelpers
    module_function

    def app
      Blog::Container::Application.app
    end
  end
end
