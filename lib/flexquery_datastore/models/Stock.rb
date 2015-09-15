module DataStore
  class Stock
    include DataMapper::Resource
    storage_names[:default] = "rp8inventoryqtys"
    property :itemsid, Integer, field: "itemsid", key: true
    property :storeno, Integer, field: "storeno", key: true

    belongs_to :variant, child_key: [:itemsid]
  end
end
