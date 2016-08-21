require 'rails_helper'

describe Event do

  let(:event) {described_class.new(
    address: '1 hello lane',
    email_type: 'Order',
    event_type: 'send',
    timestamp: 1471784514
    )}

  it 'should read address' do
    expect(event.address).to eql '1 hello lane'
  end

  it 'should read email type' do
    expect(event.email_type).to eql 'Order'
  end

  it 'should read event typr' do
    expect(event.event_type).to eql 'send'
  end

  it 'should read timestamp' do
    expect(event.timestamp).to eql 1471784514
  end

end
