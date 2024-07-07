# frozen_string_literal: true

module Whatsapp
  module Messages
    # Send messages by Whatsapp
    class Image < Whatsapp::Messages
      # sender_id Integer is the identification of number in meta
      # recipient_number Integer is the numbet to send messages
      # Caption String text sending with image
      # Link String with url of image
      def audio(sender_id:, recipient_number:, link:, caption:)
        client
          .send_image(
            sender_id:,
            recipient_number:,
            caption:,
            link:
          )
      end
    end
  end
end
