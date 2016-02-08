require 'test_helper'

class DocumentTest < ActiveSupport::TestCase
  def setup
    @document = Document.new
  end
  test "invalid document" do
     @document.name = '' #set empty
     assert_not @document.valid?
  end

  test "invalid too long document" do
     @document = Document.new 
     temp_str = ""
     100.times do
       temp_str << 'aaaaaaaaaa' 
     end
     @document.body = temp_str
     assert_not @document.valid?
  end
end
