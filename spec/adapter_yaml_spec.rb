# Generated by generate.rb at 2012-12-02 15:58:06 +0100, heads/master-0-g7a551c7
require 'helper'

describe_juno "adapter_yaml" do
  def new_store
    Juno::Adapters::YAML.new(:file => File.join(make_tempdir, "adapter_yaml"))
  end

  include_context 'setup_store'
  it_should_behave_like 'null_stringkey_stringvalue'
  it_should_behave_like 'store_stringkey_stringvalue'
  it_should_behave_like 'returndifferent_stringkey_stringvalue'
  it_should_behave_like 'null_stringkey_objectvalue'
  it_should_behave_like 'store_stringkey_objectvalue'
  it_should_behave_like 'returndifferent_stringkey_objectvalue'
end
