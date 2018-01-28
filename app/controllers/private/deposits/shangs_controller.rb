module Private
  module Deposits
    class ShangsController < ::Private::Deposits::BaseController
      include ::Deposits::CtrlCoinable
    end
  end
end
