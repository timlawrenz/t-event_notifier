# frozen_string_literal: true

module T
  module EventNotifier
    class Log
      include GL::Command
      include GL::Contract
      include GL::Chain

      requires :event
      allows :object
      allows :identifier

      chain SetIdentifier
      # chain LogEvent
      # chain DistributeEvent
    end
  end
end
