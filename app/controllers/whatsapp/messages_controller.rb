module Whatsapp
  class MessagesController < ApplicationController
    def index
      return render json: { value: 'hola mundo'}
    end
  end
end
