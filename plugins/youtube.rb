module Jekyll
  class Youtube < Liquid::Tag

    def initialize(name, id, tokens)
      super
      @id = id
    end

    def render(context)
      %(<div class="embed-video-container"><iframe src="http://www.youtube.com/embed/#{@id.strip}" width="640" height="320" allowfullscreen></iframe></div>)
    end
  end
end

Liquid::Template.register_tag('youtube', Jekyll::Youtube)