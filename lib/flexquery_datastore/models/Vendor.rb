module DataStore
  class Vendor
    include DataMapper::Resource
    storage_names[:default] = "rp8inventoryvendors"
    property :vendorcode, String, field: "vendorcode", key: true

    has n, :variants, child_key: [:vendorcode]

    property :name, String, field: "company"

    def products
      product_ids = repository.adapter
        .select('SELECT desc1 FROM rp8inventoryitems WHERE vendorcode = ?',
          self.vendorcode)
        .uniq
      DataStore::Product.all(desc1: product_ids, unique: true)
    end
  end
end
