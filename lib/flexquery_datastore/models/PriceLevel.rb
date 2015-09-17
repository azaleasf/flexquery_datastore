module DataStore
  class PriceLevel
    include DataMapper::Resource
    storage_names[:default] = "rp8inventorypricelevels"
    property :itemsid, Integer, field: "itemsid", key: true
    property :pricelevel, Integer, field: "pricelevel", key: true

    property :price, Float, field: "p$"

    def variant
      DataStore::Variant.first(itemsid: self.itemsid)
    end
  end
end
