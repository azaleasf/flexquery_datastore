require 'spec_helper'

describe DataStore::Variant do
  let(:first) { DataStore::Variant.first }
  it 'can pull a record from the rp8inventoryitems table' do
    expect(first).not_to be nil
  end

  it 'should belong to a product' do
    expect(first.product).to be_a_kind_of(DataStore::Product)
  end
end
