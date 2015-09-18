require "flexquery_datastore/version"
require "data_mapper"

module DataStore
  def self.setup
    DataMapper::Logger.new($stdout, :debug) if ENV['LOG_DATASTORE_QUERIES']
    DataMapper.setup(:default, ENV['DATASTORE_POSTGRES_URL'])
    Dir[File.dirname(__FILE__) + '/flexquery_datastore/models/*.rb'].each {|file| require file }
  end
end
