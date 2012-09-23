class Picture
  delegate :media_popular, to: Instagram
  class<<self
    def populars
      pictures = []
      3.times { pictures += Instagram.media_popular }
      pictures
    end
  end
end
