require 'test_helper'

class DocumentsControllerTest < ActionController::TestCase
   def setup
     sign_in users(:one)
     document = Document.new
   end
   test "should find some params" do
     get(:show,{'id'=> 1})
     assert_response :success
     assert_not_nil assigns(:documents)
   end
end
