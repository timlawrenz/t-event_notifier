# frozen_string_literal: true

module T
  module EventNotifier
    class SetIdentifier
      include GL::Command

      def call
        context.identifier ||= prefix(sentry_trace || random_uuid)
      end

      private

      def prefix(id)
        [:t, :event, :tracking, id].join('-')
      end

      def sentry_trace
        return nil unless defined?(Sentry)

        Sentry.get_traceparent
      end

      def random_uuid
        SecureRandom.uuid
      end
    end
  end
end
