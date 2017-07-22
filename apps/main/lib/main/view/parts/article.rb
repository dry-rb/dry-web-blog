require "dry/view/part"
require "redcarpet"

module Main
  module View
    module Parts
      class Article < Dry::View::Part
        def body_html
          @body_html ||= markdown.render(body)
        end

        private

        def markdown
          @markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML)
        end
      end
    end
  end
end
