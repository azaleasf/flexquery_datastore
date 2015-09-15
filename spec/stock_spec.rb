require 'spec_helper'

describe DataStore::Stock do
  let(:first) { DataStore::Stock.first }
  it 'can pull a record from the rp8inventoryqtys table' do
    expect(first).not_to be nil
  end

  it 'belongs to a variant' do
    expect(first.variant).to be_a_kind_of(DataStore::Variant)
  end
end
