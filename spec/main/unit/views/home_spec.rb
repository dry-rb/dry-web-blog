require "db_spec_helper"
require "blog/main/views/home"
require "blog/main/view/context"

RSpec.describe Blog::Main::Views::Home, "#call", type: :view do
  subject(:view) { described_class.new }

  let(:context) {
    Blog::Main::View::Context.new(
      fullpath: "/",
      csrf_metatag: -> { "xxx" },
      csrf_tag: -> { "xxx" },
      csrf_token: -> { "xxx" },
      flash: {},
    )
  }

  let(:html) { view.(context: context) }
  let(:page) { Capybara.string(html) }

  before do
    Factory[:article, title: "My 1st article", published_at: TimeMath.week.decrease(Time.now, 2), body: "**Welcome** to my blog"]
    Factory[:article, title: "My 2nd article", published_at: TimeMath.week.decrease(Time.now, 1)]
  end

  it "renders the articles in date-descending order" do
    expect(page).to have_selector ".article:nth-of-type(1) h2", text: "My 2nd article"
    expect(page).to have_selector ".article:nth-of-type(2) h2", text: "My 1st article"
  end

  describe "article" do
    let(:article) { page.find(".article:nth-of-type(2)") }

    it "renders the full markdown bodies" do
      expect(article.native.inner_html).to include "<strong>Welcome</strong> to my blog"
    end
  end
end
