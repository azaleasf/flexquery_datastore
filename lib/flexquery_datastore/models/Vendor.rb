module DataStore
  class Vendor
    include DataMapper::Resource
    storage_names[:default] = "rp8inventoryvendors"
    property :vendorcode, String, field: "vendorcode", key: true

    has n, :variants, child_key: [:vendorcode]
    has n, :products, child_key: [:vendorcode] 
  end
end
