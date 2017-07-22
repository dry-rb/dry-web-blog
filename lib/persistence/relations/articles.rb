module Persistence
  module Relations
    class Articles < ROM::Relation[:sql]
      schema :articles, infer: true

      def published
        by_published(true)
      end

      def order_by_published_at
        order(self[:published_at].desc)
      end
    end
  end
end
