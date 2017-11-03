module Test
  module WebHelpers
    module_function

    def app
      Blog::Web.app
    end
  end
end
