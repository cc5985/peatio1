module Deposits
  class Shang < ::Deposit
    include ::AasmAbsolutely
    include ::Deposits::Coinable

    validates_uniqueness_of :txout, scope: :txid
  end
end
