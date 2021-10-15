# frozen_string_literal: true

require_relative('../lib/crypto_scrapper')

describe 'hash verification' do
  it 'must return an hash' do
    expect(scrapp_crypto.class).to eq(Hash)
  end
  it 'must contains Bitcoin, Ethereum, Litecoin' do
    expect(scrapp_crypto.keys.include?('Bitcoin' && 'Ethereum' && 'Litecoin')).to eq(true)
  end
  it 'must contains Bitcoin, Ethereum, Litecoin' do
    expect(scrapp_crypto.keys.length > 15).to eq(true)
  end
end
