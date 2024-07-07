# frozen_string_literal: true

module Whatsapp
  class Messages
    attr_reader :client

    def initialize(client: WhatsappSdk::Api::Messages.new)
      @client = client
    end

    def send_document(sender_id:, recipient_number:, link:, caption:)
      client
        .send_document(
          sender_id:,
          recipient_number:,
          link:,
          caption:
        )
    end

    def send_interactive_list_messages(sender_id:, recipient_number:, interactive_json:)
      client
        .send_interactive_list_messages(
          sender_id:,
          recipient_number:,
          interactive_json:
        )
    end
  end
end
