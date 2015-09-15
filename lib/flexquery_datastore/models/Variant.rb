module DataStore
  class Variant
    include DataMapper::Resource
    storage_names[:default] = "rp8inventoryitems"
    property :itemsid, Integer, field: "itemsid", key: true

    belongs_to :product, child_key: [:desc1]
    has n, :stocks, child_key: [:itemsid]
  end
end
