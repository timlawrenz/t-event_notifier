# frozen_string_literal: true

module T
  module EventNotifier
    class LogEvent
      include GL::Command
      include GL::Contract

      requires :event
      allows :message
      allows :object
      allows :identifier

      def call
        Rails.logger.info([event, message, object, identifier].compact.join(' '))
      end
    end
  end
end
