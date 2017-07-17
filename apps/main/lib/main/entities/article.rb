require "redcarpet"
require "rom/struct"

module Main
  module Entities
    class Article < ROM::Struct
      def body_html
        @body_html ||= markdown.render(body)
      end

      private

      def markdown
        @markdown ||= begin
          Redcarpet::Markdown.new(Redcarpet::Render::HTML)
        end
      end
    end
  end
end
