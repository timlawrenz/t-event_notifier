# frozen_string_literal: true

require 'spec_helper'

describe 'Commands' do
  it 'is possible to call a command' do
    puts T::EventNotifier::Log.call(event: "Matt's Battery at 3%").errors.inspect
    expect(T::EventNotifier::Log.call(event: "Matt's Battery at 3%").success?).to be(true)
  end
end
