module DataStore
  class Stock
    include DataMapper::Resource
    storage_names[:default] = "rp8inventoryqtys"
    property :itemsid, Integer, field: "itemsid", key: true
    property :storeno, Integer, field: "storeno", key: true

    property :onhand,   Integer, field: "onhand"
    property :onorder,  Integer, field: "onorder"
    property :received, Integer, field: "received"
    property :sold,     Integer, field: "sold"

    def variant
      DataStore::Variant.first(itemsid: self.itemsid)
    end

    def store
      DataStore::Store.first(storeno: self.storeno)
    end
  end
end
