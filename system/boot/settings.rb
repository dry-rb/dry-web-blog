Blog::Container.finalize :settings do |container|
  init do
    require "blog/settings"
  end

  start do
    settings = Blog::Settings.load(container.config.root, container.config.env)
    container.register "settings", settings
  end
end
