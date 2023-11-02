# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Variables
# Set site URL & Title
set :button_detail, 'Consulter'
set :form_email, 'Email'
set :form_message, 'Message'
set :form_name, 'Nom'
set :form_submit, 'Envoyer'
set :portfolio_title, 'Portfolio'
set :site_author, '@j-archi'
set :site_title, 'J-Archi'
set :url_root, 'https://j-archi.net'

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.xsl', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# Assets
set :css_dir, 'assets/css'
set :images_dir, 'assets/img'
set :js_dir, 'assets/js'

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
#   activate :minify_javascript
# end