require 'spec_helper'

describe DataStore::Vendor do
  let(:first) { DataStore::Vendor.first }
  it 'can pull a record from the rp8inventoryvendors table' do
    expect(first).not_to be nil
  end

  it 'should have many products' do
    expect(first.products).to be_a_kind_of(Array)
    if first.products.length > 0
      expect(first.products.first).to be_a_kind_of(DataStore::Product)
    end
  end
end
