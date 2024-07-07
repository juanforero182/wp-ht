# frozen_string_literal: true

module Whatsapp
  module Messages
    # Send messages by Whatsapp
    class Audio < Whatsapp::Messages
      # sender_id Integer is the identification of number in meta
      # recipient_number Integer is the numbet to send messages
      # Link String with url of audio
      def audio(sender_id:, recipient_number:, link:)
        client
          .send_audio(
            sender_id:,
            recipient_number:,
            link:
          )
      end
    end
  end
end
