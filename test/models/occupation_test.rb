require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Occupation Model" do
  it 'can construct a new instance' do
    @occupation = Occupation.new
    refute_nil @occupation
  end
end
