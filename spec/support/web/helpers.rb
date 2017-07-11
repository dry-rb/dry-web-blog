module Test
  module WebHelpers
    module_function

    def app
      Blog::Application.app
    end
  end
end
