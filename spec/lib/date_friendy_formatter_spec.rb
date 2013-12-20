require 'spec_helper'


describe 'My behaviour' do

  it 'should do something' do
    d = Date.new(2013,01,01)
    # need to remove the dependency block in application controller to run this test
    result = DateFriendlyFormatter::friendlydate(d)
    puts(result)
    expect(result).to eql('01/01/2013')
  end
end