module DataStore
  class Stock
    include DataMapper::Resource
    storage_names[:default] = "rp8inventoryqtys"
    property :itemsid, Integer, field: "itemsid", key: true
    property :storeno, Integer, field: "storeno", key: true

    belongs_to :variant, child_key: [:itemsid]
    belongs_to :store, child_key: [:storeno]

    property :onhand,   Integer, field: "onhand"
    property :onorder,  Integer, field: "onorder"
    property :received, Integer, field: "received"
    property :sold,     Integer, field: "sold"
  end
end
