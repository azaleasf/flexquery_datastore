module DataStore
  class Category
    include DataMapper::Resource
    storage_names[:default] = "rp8inventorydepartments"
    property :dcs, String, field: "dcs", key: true

    has n, :variants, child_key: [:dcs]

    property :dept, String, field: "dept"
    property :class, String, field: "class"
    property :subclass, String, field: "subclass"
    property :dcsname, String, field: "dcsname"
    property :deptname, String, field: "deptname"
    property :classname, String, field: "classname"
    property :subclassname, String, field: "subclassname"
    property :puredcs, String, field: "puredcs"

    def products
      products = self.variants.uniq { |variant| variant.desc1 }
      product_ids = products.map { |product| product.desc1 }
      DataStore::Product.all(desc1: product_ids)
    end
  end
end
