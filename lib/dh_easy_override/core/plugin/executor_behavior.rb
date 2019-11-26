module DhEasy
  module Core
    module Plugin
      module ExecutorBehavior
        def test_mode?
          DhEasy::Test.test_mode?
        end
      end
    end
  end
end
