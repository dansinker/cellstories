require File.dirname(__FILE__) + '/../test_helper'
require 'libraries_controller_controller'

# Re-raise errors caught by the controller.
class LibrariesControllerController; def rescue_action(e) raise e end; end

class LibrariesControllerControllerTest < Test::Unit::TestCase
  def setup
    @controller = LibrariesControllerController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
