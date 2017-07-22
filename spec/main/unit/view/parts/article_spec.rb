require "db_spec_helper"
require "main/view/parts/article"

RSpec.describe Main::View::Parts::Article do
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
    let(:article) { Factory.structs[:article, body: "**Welcome** to my blog"] }

    it "renders markdown as HTML" do
      expect(part.body_html).to eq "<p><strong>Welcome</strong> to my blog</p>\n"
    end
  end
end
