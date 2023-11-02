xml.instruct!
xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9" do
  sitemap.resources.each do |resource|
    xml.url do
      xml.loc URI.join(config[:url_root], resource.url[1..-2])
      xml.lastmod Time.now.strftime('%Y'+'-'+'%m'+'-'+'%d')
      xml.changefreq 'weekly'
      xml.priority '0.9'
    end if resource.url !~ /\.(css|js|eot|svg|woff|woff2|webp|xsl|ico|txt|ttf|png|pdf|jpg|jpeg|gif|keep|xml|zip|webmanifest)$/
  end
end