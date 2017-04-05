module ProductSearchHelper
  def link_to_retailer(item)
    if item['sitedetails'].any?
      name = item['sitedetails'].first['name']
      url = item['sitedetails'].first['url']

      link_to(name, url)
    else
      '--'
    end
  end
end
