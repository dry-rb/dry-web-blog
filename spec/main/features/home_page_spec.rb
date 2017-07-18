require "web_spec_helper"

RSpec.feature "Home page" do
  background do
    Factory[:article, title: "My 1st article", published_at: TimeMath.week.decrease(Time.now, 2)]
    Factory[:article, title: "My 2nd article", published_at: TimeMath.week.decrease(Time.now, 1)]
  end

  scenario "Viewing articles list" do
    visit "/"
    expect(page).to have_selector ".article:nth-of-type(1) h2", text: "My 2nd article"
    expect(page).to have_selector ".article:nth-of-type(2) h2", text: "My 1st article"
  end
end
