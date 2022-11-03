require 'rails_helper'

RSpec.describe Compact do
  it "gives a hash for the url upto 8 character" do

  url="https://www.jetbrains.com/help/ruby/reformat-and-rearrange-code.html"

  short =Compact.new(url)
  expect(short.generate_hash_link.length).to eq(8)
end


end