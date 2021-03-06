require 'spec_helper'

describe DataStore::Product do
  before(:all) do
    @first = DataStore::Product.first
  end
  it 'can pull a record from the rp8inventoryitems table' do
    expect(@first).not_to be nil
  end

  it 'should have many variants' do
    expect(@first.variants).to be_a_kind_of(Array)
    if @first.variants.length > 0
      expect(@first.variants.first).to be_a_kind_of(DataStore::Variant)
    end
  end

  it 'should belong to a vendor' do
    expect(@first.vendor).to be_a_kind_of(DataStore::Vendor)
  end

  it 'should belong to a category' do
    expect(@first.category).to be_a_kind_of(DataStore::Category)
  end
end
