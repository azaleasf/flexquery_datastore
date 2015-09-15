require 'spec_helper'

describe DataStore::Product do
  let(:last) { DataStore::Product.last }
  it 'can pull a record from the rp8inventoryitems table' do
    expect(last).not_to be nil
  end

  it 'should have 1 or more variants' do
    expect(last.variants.length).to be >= 1
    expect(last.variants.first).to be_a_kind_of(DataStore::Variant)
  end
end
