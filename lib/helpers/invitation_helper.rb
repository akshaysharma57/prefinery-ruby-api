module Prefinery
  module ViewHelper
    def prefinery_invitation_javascript
      <<-HTML
      <style type='text/css'>@import url('http://www.prefinery.com/stylesheets/widget.css');</style>
      <script src='http://www.prefinery.com/javascripts/widget.js' type='text/javascript'></script>
      <script type='text/javascript' charset='utf-8'>
          Prefinery.invite("#{Prefinery.url}/testers/new?display=popup");
      </script>
      HTML
    end

    def prefinery_embed_invitation_form
      <<-HTML
      <iframe id='prefinery_iframe_inline' allowTransparency='true' width='100%' height='600' scrolling='no' frameborder='0' src="#{Prefinery.url}/testers/new?display=inline"></iframe>
      HTML
    end
    
    def link_to_prefinery_invitation(name, options = {}, html_options = {})
      html_options.merge!({:id => 'prefinery_invite_link'})
      link_to name, options, html_options
    end
  end
end

