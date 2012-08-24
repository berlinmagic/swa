# encoding: utf-8
require 'rack/cache'
require 'dragonfly/rails/images'

app = Dragonfly[:images]
app.configure_with(:imagemagick)
app.configure_with(:rails)

app.configure do |c|
  c.cache_duration = 3600*24*42                       # defaults to 1 year # (1 year)
  c.fallback_mime_type = 'application/octet-stream'           
  # => c.url_format = '/media/:job/:basename.:format' 
  c.url_format = '/media/:job/:basename.:ext' 
  c.trust_file_extensions = false                     
  # => c.register_mime_type(:odt, 'application/vnd.oasis.opendocument.text')
  # => c.register_mime_type(:aml, 'application/mac.configuration.text')
end

app.define_macro(ActiveRecord::Base, :image_accessor)
# => app.define_macro(ActiveRecord::Base, :attachment_accessor)
app.define_macro(ActiveRecord::Base, :file_accessor)
app.analyser.register(Dragonfly::Analysis::FileCommandAnalyser)
app.analyser.register(Dragonfly::ImageMagick::Analyser)


