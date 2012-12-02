# Generated by generate.rb at 2012-12-02 15:58:06 +0100, heads/master-0-g7a551c7
require 'helper'

describe_juno "adapter_memcached_native" do
  def new_store
    Juno::Adapters::MemcachedNative.new(:server => "localhost:22122", :namespace => "adapter_memcached_native")
  end

  include_context 'setup_store'
  it_should_behave_like 'null_stringkey_stringvalue'
  it_should_behave_like 'store_stringkey_stringvalue'
  it_should_behave_like 'returndifferent_stringkey_stringvalue'
  it_should_behave_like 'expires_stringkey_stringvalue'
end
