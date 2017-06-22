module Test
  module DatabaseHelpers
    module_function

    def rom
      Blog::Container["persistence.rom"]
    end

    def db
      Blog::Container["persistence.db"]
    end
  end
end
