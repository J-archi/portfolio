# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Variables
# Set site URL & Title
set :site_author, '@j-archi'
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

# Location
Time.zone = 'Paris'
I18n.config.enforce_available_locales = false

# Blog
activate :blog do |blog|
  # This will add a prefix to all links, template references and source paths
  blog.prefix = 'articles'
  # Permalink
  blog.permalink = '{category}/{title}.html'
  # Layout
  blog.layout = 'article'
  # Matcher for blog source files
  blog.default_extension = '.markdown'
  # Enable Categories
  blog.custom_collections = {
    category: {
      link: '/categories/{category}.html',
      template: '/articles/category.html'
    }
  }
  # Tag template
  blog.tag_template = '/articles/tag.html'
  # Enable pagination
  blog.paginate = true
  blog.per_page = 6
  blog.page_link = 'page/{num}'
end

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