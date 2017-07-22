require "blog/repository"

module Main
  module Persistence
    class ArticlesRepo < Blog::Repository[:articles]
      def listing(limit: 10)
        articles.published.order_by_published_at.limit(limit)
      end
    end
  end
end
