require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @product = products(:one)
  end

  test "should have two items" do
    assert_equal(@product.items.count,2)
  end

end
