# frozen_string_literal: true

require 'spec_helper'

describe T::EventNotifier::SetIdentifier do
  subject(:call) { described_class.call(params) }

  context 'when an identifier is given' do
    let(:params) { { identifier: 'boo' } }

    it 'returns the given identifier' do
      expect(call.identifier).to eq('boo')
    end
  end

  context 'when no identifier is given' do
    let(:params) { {} }
    let(:fake_sentry) { class_double('Sentry') } # rubocop:disable RSpec/VerifiedDoubleReference

    it 'returns the given identifier' do
      expect(call.identifier).not_to be_blank
    end

    context 'when Sentry is defined' do
      before do
        stub_const('Sentry', fake_sentry)
        allow(fake_sentry).to receive(:get_traceparent).and_return('fake-sentry-trace')
      end

      it 'returns the current Sentry trace' do
        expect(call.identifier).to eq('t-event-tracking-fake-sentry-trace')
      end
    end
  end
end
