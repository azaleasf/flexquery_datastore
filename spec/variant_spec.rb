require 'spec_helper'

describe DataStore::Variant do
  before(:all) do
    @first = DataStore::Variant.first
  end

  it 'can pull a record from the rp8inventoryitems table' do
    expect(@first).not_to be nil
  end

  it 'should belong to a product' do
    expect(@first.product).to be_a_kind_of(DataStore::Product)
  end

  it 'should have many stocks' do
    expect(@first.stocks).to be_a_kind_of(Array)
    if @first.stocks.length > 0
      expect(@first.stocks.first).to be_a_kind_of(DataStore::Stock)
    end
  end

  it 'should have many price_levels' do
    expect(@first.price_levels).to be_a_kind_of(Array)
    if @first.price_levels.length > 0
      expect(@first.price_levels.first).to be_a_kind_of(DataStore::PriceLevel)
    end
  end

  it 'should belong to a vendor' do
    expect(@first.vendor).to be_a_kind_of(DataStore::Vendor)
  end

  it 'should belong to a category' do
    expect(@first.category).to be_a_kind_of(DataStore::Category)
  end
end
