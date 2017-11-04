require "blog/repository"

module Blog
  module Main
    class ArticleRepo < Blog::Repository[:articles]
      def listing(limit: 10)
        articles.published.order_by_published_at.limit(limit)
      end
    end
  end
end
