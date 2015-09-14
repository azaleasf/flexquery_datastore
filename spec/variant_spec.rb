require 'spec_helper'

describe DataStore::Variant do
  it 'can pull a record from the rp8inventoryitems table' do
    expect(DataStore::Variant.first).not_to be nil
  end
end
