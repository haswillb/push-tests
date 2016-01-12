require 'rubygems'
require 'aerospike'

include Aerospike

client = Client.new(ENV['SERVER_PORT_3000_TCP_ADDR'], 3000)

key = Key.new('test', 'test', 'key value')
bin_map = {
  'bin1' => 'value1',
  'bin2' => 2,
  'bin4' => ['value4', {'map1' => 'map val'}],
  'bin5' => {'value5' => [124, "string value"]},
}

client.put(key, bin_map)
record = client.get(key)
puts record

# modify
record.bins['bin1'] = 'other value'
client.put(key, record.bins)
record = client.get(key)
puts record.bins

client.delete(key)
puts client.exists(key)

client.close