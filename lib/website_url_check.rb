require "website_url_check/version"
require 'resolv'
require 'pry'

module WebsiteUrlCheck
  def self.validate_url(url, options={})
		if system("ping -c 1 google.com")
		  ip_address = Resolv.getaddress url rescue []
		  if ip_address.nil?
			  "Website URL is Invalid."
		  end
		else
			"No active internet connection"
		end
	end
end
