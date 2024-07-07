# frozen_string_literal: true

module Whatsapp
  module Messages
    # Send messages by Whatsapp
    class Text < Whatsapp::Messages
      # sender_id Integer is the identification of number in meta
      # recipient_number Integer is the numbet to send messages
      # Message String is text to send
      def call(sender_id:, recipient_number:, message:)
        client
          .send_text(
            sender_id:,
            recipient_number:,
            message:
          )
      end
    end
  end
end
