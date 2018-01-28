module Withdraws
  class Stock001 < ::Withdraw
    include ::AasmAbsolutely
    include ::Withdraws::Coinable
    include ::FundSourceable
  end
end
