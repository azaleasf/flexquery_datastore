# FlexqueryDatastore

A Ruby Gem to interface with a FlexQuery DataStore instance.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'flexquery_datastore'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install flexquery_datastore

## Usage

The main use of this gem is to help gain access to data in a RetailPro 8 or RetailPro 9 system so you can build your own tools on top of RetailPro, or migrate all of your existing RetailPro data to a new inventory management system.

This gem does not interface directly with RetailPro, instead it communicates with the DataStore product offered by [FlexQuery](flexquery.com). It provides an ORM mapping on top of the DataStore database.

[DataMapper](http://datamapper.org/) was used as the ORM library. You can use [DataMapper query methods](http://datamapper.org/docs/find.html) on all objects created by this gem.

### Up and Running
To get up and running you need to set an environment variable that your application can read with your postgres url.

```ruby
DATASTORE_POSTGRES_URL=postgres://username:password@localhost/exampledb
```
Optionally, you can set DataMapper to log all sql queries generated.
```ruby
LOG_DATASTORE_QUERIES=true
```
### Available Classes and Associations
The following are the classes and associations available in this gem. All have been namespaced with DataStore::

```ruby
# primary key rp8inventoryitems.desc1
DataStore::Product
product = DataStore::Product.first
product.variants
product.vendor
product.cateogry

# primary key rp8inventoryitems.itemsid
DataStore::Variant
variant = DataStore::Variant.first
variant.stocks
variant.product
variant.vendor
variant.category

# primary key rp8inventorydepartments.dcs
DataStore::Category
category = DataStore::Category.first
category.variants
category.products

# composite primary key rp8inventoryqtys.itemsid, rp8inventoryqtys.storeno
DataStore::Stock
stock = DataStore::Stock.first
stock.variant
stock.store

# primary key stores.storeno
DataStore::Store
store = DataStore::Store.first
store.stocks

# primary key rp8inventoryvendors.vendorcode
DataStore::Vendor
vendor = DataStore::Vendor.first
vendor.variants
vendor.products
```
### Rake Tasks
To open up an irb session with this gem loaded in type:
```ruby
rake console
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/flexquery_datastore/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
