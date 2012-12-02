# Generated by generate.rb at 2012-12-02 15:58:06 +0100, heads/master-0-g7a551c7
require 'helper'

describe_juno "cache_file_memory" do
  def new_store
    Juno.build do
      use(:Cache) do
        backend { adapter :File, :dir => File.join(make_tempdir, "cache_file_memory") }
        cache { adapter :Memory }
      end
    end
  end

  include_context 'setup_store'
  it_should_behave_like 'null_stringkey_stringvalue'
  it_should_behave_like 'store_stringkey_stringvalue'
  it_should_behave_like 'returndifferent_stringkey_stringvalue'
  it 'should store loaded values in cache' do
    store.backend['foo'] = 'bar'
    store.cache['foo'].should == nil
    store['foo'].should == 'bar'
    store.cache['foo'].should == 'bar'
    store.backend.delete('foo')
    store['foo'].should == 'bar'
    store.delete('foo')
    store['foo'].should == nil
  end

end
