module Lita
  module Handlers
    class Tomorrow < Handler
      IMAGES = [
        "http://cdn.meme.am/instances/55044876.jpg",
        "http://www.quickmeme.com/img/05/05d1895a5419c4acbf5c0af2973230b86828631a2c96acd8354531355b165f79.jpg",
        "http://m.memegen.com/790v09.jpg",
        "http://www.troll.me/images/10-guy/yesterday-is-the-today-of-tomorrow.jpg",
        "http://assets.diylol.com/hfs/93d/d64/02a/resized/jesus-says-meme-generator-jesus-says-see-you-tomorrow-maybe-62c83c.jpg",
        "http://cdn.meme.am/instances/53323252.jpg",
        "http://www.quickmeme.com/img/11/11fc9fa5e8a7c96992a955f1d7dcf7392b327d158eadfdcf9b3f31ba493dbd90.jpg",
        "http://ct.fra.bz/ol/fz/sw/i50/5/8/12/frabz-So-you-mean-to-tell-me-i-dont-have-to-go-to-work-tomorrow-02f8f1.jpg",
        "http://www.quickmeme.com/img/c0/c00f12b1e0c0ec2a2990e4992564be6cd424b1e0f33359ca8d77391fe358f12a.jpg",
        "http://img.pandawhale.com/post-19767-tomorrow-is-a-good-day-meme-Au-TSNs.jpeg"
      ]

      def self.default_config(config)
        config.command_only = false
      end

      route %r{.*(tomorrow|tomorow|tommorow|tmrw).*}i, :tomorrow

      def tomorrow(response)
        response.reply IMAGES.sample
      end
    end

    Lita.register_handler(Tomorrow)
  end
end
