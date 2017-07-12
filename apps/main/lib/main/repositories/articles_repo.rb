require "blog/repository"

module Main
  module Repositories
    class ArticlesRepo < Blog::Repository[:articles]
      def home_page_listing
        articles.published.order_by_published_at.limit(10)
      end
    end
  end
end
