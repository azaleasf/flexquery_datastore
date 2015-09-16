module DataStore
  class Variant
    include DataMapper::Resource
    storage_names[:default] = "rp8inventoryitems"
    property :itemsid, Integer, field: "itemsid", key: true

    has n, :stocks, child_key: [:itemsid]
    belongs_to :product, child_key: [:desc1]
    belongs_to :vendor, child_key: [:vendorcode]
    belongs_to :category, child_key: [:dcs]

    property :desc1, String, field: "desc1"
  end
end
