module DataStore
  class Variant
    include DataMapper::Resource
    storage_names[:default] = "rp8inventoryitems"
    property :itemsid, Integer, field: "itemsid", key: true

    belongs_to :vendor, child_key: [:vendorcode]

    property :dcs,             String, field: "dcs"
    property :desc1,           String, field: "desc1"
    property :attr,            String, field: "attr"
    property :size,            String, field: "size"
    property :lrecvd,          DateTime, field: "lrecvd"
    property :lsoldd,          DateTime, field: "lsoldd"
    property :frecvd,          DateTime, field: "frecvd"
    property :lmrkdnd,         DateTime, field: "lmrkdnd"
    property :price,           Integer, field: "price"
    property :cost,            Float, field: "cost"
    property :margin,          Float, field: "mgn"
    property :marginprc,       Integer, field: "mgnprc"
    property :coeff,           Float, field: "coeff"
    property :taxprc,          Float, field: "taxprc"
    property :tax,             Float, field: "tax"
    property :ordcost,         Float, field: "ordcost"
    property :formerprice,     Integer, field: "frmrprc"
    property :pricewtx,        Float, field: "prcwtx"
    property :marginwtx,       Float, field: "mrgwtx"
    property :formerpricewtx,  Float, field: "frmrprcwtx"
    property :printtags,       Boolean, field: "printtags"
    property :mkupprc,         String, field: "mkupprc"
    property :itemnum,         Integer, field: "itemnum"
    property :itemsid,         Integer, field: "itemsid"
    property :noninventory,    Boolean, field: "noninventory"
    property :committed,       Boolean, field: "committed"
    property :doclastedit,     DateTime, field: "doclastedit"
    property :salediscpercent, Float, field: "salediscpercent"
    property :saledisc,        Integer, field: "saledisc"
    property :totaltax,        Float, field: "totaltax"

    def price_levels
      DataStore::PriceLevel.all(itemsid: self.itemsid)
    end

    def product
      DataStore::Product.first(desc1: self.desc1)
    end

    def stocks
      DataStore::Stock.all(itemsid: self.itemsid)
    end

    def category
      DataStore::Category.first(dcs: self.dcs)
    end
  end
end
