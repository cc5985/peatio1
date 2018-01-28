module Private
  module Deposits
    class Stock001sController < ::Private::Deposits::BaseController
      include ::Deposits::CtrlCoinable
    end
  end
end
