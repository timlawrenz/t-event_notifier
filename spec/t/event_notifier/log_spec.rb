# frozen_string_literal: true

require 'spec_helper'

describe T::EventNotifier::Log do
  subject(:call) { described_class.call(params) }

  let(:params) { { event: :OrderConfirmed } }

  it { is_expected.to be_success }
end
