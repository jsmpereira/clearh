require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Passport Model" do
  it 'can construct a new instance' do
    @passport = Passport.new
    refute_nil @passport
  end
end
