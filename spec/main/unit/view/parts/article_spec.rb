require "db_spec_helper"
require "blog/main/view/parts/article"

RSpec.describe Blog::Main::View::Parts::Article do
  subject(:part) {
    described_class.new(
      name: "article",
      value: article,
      renderer: nil,
      context: nil,
    )
  }

  let(:article) { Factory.structs[:article] }

  describe "#body_html" do
    let(:article) { Factory.structs[:article, body: "**Hello** from my blog's first article!"] }

    it "renders markdown as HTML, with smart punctuation" do
      expect(part.body_html).to eq "<p><strong>Hello</strong> from my blog’s first article!</p>\n"
    end
  end
end
