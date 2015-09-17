require 'spec_helper'

describe DataStore::PriceLevel do
  before(:all) do
    @first = DataStore::PriceLevel.first
  end

  it 'can pull a record from rp8inventorypricelevels table' do
    expect(@first).not_to be nil
  end

  it 'should belong to a variant' do
    expect(@first.variant).to be_a_kind_of(DataStore::Variant)
  end
end
