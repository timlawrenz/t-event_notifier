# frozen_string_literal: true

module T
  module EventNotifier
    class Distribute
      include GL::Command
      include GL::Contract

      requires :event
      allows :message
      allows :object
      requires :identifier

      def call

      end
    end
  end
end
