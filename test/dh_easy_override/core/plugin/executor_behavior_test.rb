require 'test_helper'

describe 'executor_behavior' do
  describe 'unit test' do
    before do
      @object = Object.new
      class << @object
        include DhEasy::Core::Plugin::ExecutorBehavior
      end
    end

    it 'should get test_mode' do
      DhEasy::Test.disable_test_mode
      refute DhEasy::Test.test_mode?
      refute @object.test_mode?
      DhEasy::Test.enable_test_mode
      assert DhEasy::Test.test_mode?
      assert @object.test_mode?
      DhEasy::Test.disable_test_mode
      refute DhEasy::Test.test_mode?
      refute @object.test_mode?
    end
  end
end
