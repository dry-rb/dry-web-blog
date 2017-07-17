require "blog/repository"
require "main/entities/article"

module Main
  module Repositories
    class ArticlesRepo < Blog::Repository[:articles]
      struct_namespace Main::Entities

      def home_page_listing
        articles.published.order_by_published_at.limit(10)
      end
    end
  end
end
