# frozen_string_literal: true

module Whatsapp
  module Messages
    # Send messages by Whatsapp
    class Template < Whatsapp::BaseMessages
      # sender_id Integer is the identification of number in meta
      # recipient_number Integer is the numbet to send messages
      # Name String is name of Template in meta
      # components_json Is Hash with data
      # example components_json, with 3 variables
      #
      #  {
      #   type: "body",
      #   parameters: [
      #     {
      #       type: "text",
      #       text: "John"  # Variable 1: Nombre del destinatario
      #     },
      #     {
      #       type: "text",
      #       text: "123456"  # Variable 2: Código de verificación
      #     },
      #     {
      #       type: "text",
      #       text: "https://example.com/verify"  # Variable 3: URL
      #     }
      #   ]
      # }
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
