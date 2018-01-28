module Private::Withdraws
  class Stock01sController < ::Private::Withdraws::BaseController
    include ::Withdraws::Withdrawable
  end
end
