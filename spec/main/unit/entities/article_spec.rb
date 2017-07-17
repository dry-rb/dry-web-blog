require "db_spec_helper"
require "main/repositories/articles_repo"
require "main/entities/article"

RSpec.describe Main::Entities::Article do
  subject(:article) { klass.new(attributes.to_h) }

  let(:klass) { Main::Repositories::ArticlesRepo.new.articles.mapper.model }
  let(:attributes) { Factory.structs[:article] }

  describe "#body_html" do
    let(:attributes) { Factory.structs[:article, body: "**Welcome** to my blog"] }

    it "renders markdown as HTML" do
      expect(article.body_html).to eq "<p><strong>Welcome</strong> to my blog</p>\n"
    end
  end
end
