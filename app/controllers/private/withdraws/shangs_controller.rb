module Private::Withdraws
  class ShangsController < ::Private::Withdraws::BaseController
    include ::Withdraws::Withdrawable
  end
end
