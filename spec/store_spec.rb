require 'spec_helper'

describe DataStore::Store do
  before(:all) do
    @first = DataStore::Store.first
  end

  it 'can pull a record from the stores table' do
    expect(@first).not_to be nil
  end

  it 'has many stocks' do
    expect(@first.stocks).to be_a_kind_of(Array)
    if @first.stocks.length > 0
      expect(@first.stocks.first).to be_a_kind_of(DataStore::Stock)
    end
  end
end
