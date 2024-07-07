# frozen_string_literal: true

module Whatsapp
  module Messages
    # Send messages by Whatsapp
    class Template < Whatsapp::Messages
      # sender_id Integer is the identification of number in meta
      # recipient_number Integer is the numbet to send messages
      # Name String is name of Template in meta
      # components_json Is Hash with data
      def call(sender_id:, recipient_number:, name:, components_json:)
        client
          .send_template(
            sender_id:,
            recipient_number:,
            name:,
            language: 'es_mx',
            components_json: [components_json]
          )
      end
    end
  end
end
