require "dry/view/part"
require "commonmarker"

module Main
  module View
    module Parts
      class Article < Dry::View::Part
        def body_html
          @body_html ||= CommonMarker.render_doc(body, :SMART).to_html
        end
      end
    end
  end
end
