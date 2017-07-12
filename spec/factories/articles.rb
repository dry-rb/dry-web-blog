Factory.define :article do |f|
  f.sequence(:slug) { |i| "article-#{i}" }
  f.title { fake(:lorem, :words, 5) }
  f.body { fake(:lorem, :paragraphs, 1) }
  f.published true
  f.published_at { Time.now }
  f.timestamps
end
