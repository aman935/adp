module UsersHelper

	def gravatar_for(user, size: 80)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
  def full_title(page_title='')
		base_title="Pulse"
		 if page_title.empty?
        base_title
    		else
    			    "#{page_title} | #{base_title}"
   end
    end
  
end
