module DataStore
  class Vendor
    include DataMapper::Resource
    storage_names[:default] = "rp8inventoryvendors"
    property :vendorcode, String, field: "vendorcode", key: true

    has n, :variants, child_key: [:vendorcode]

    property :name, String, field: "company"

    def products
      products = self.variants.uniq { |variant| variant.desc1 }
      product_ids = products.map { |product| product.desc1 }
      DataStore::Product.all(desc1: product_ids)
    end
  end
end
