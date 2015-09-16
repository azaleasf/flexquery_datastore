module DataStore
  class Category
    include DataMapper::Resource
    storage_names[:default] = "rp8inventorydepartments"
    property :dcs, String, field: "dcs", key: true

    has n, :variants, child_key: [:dcs]

    def products
      products = self.variants.uniq { |variant| variant.desc1 }
      product_ids = products.map { |product| product.desc1 }
      DataStore::Product.all(desc1: product_ids)
    end
  end
end
