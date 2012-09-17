class Picture
  delegate :media_popular, to: Instagram

  class<<self
    def populars
      Instagram.media_popular
    end
  end
end
