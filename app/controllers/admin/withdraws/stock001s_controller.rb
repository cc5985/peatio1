module Admin
  module Withdraws
    class Stock001sController < ::Admin::Withdraws::BaseController
      load_and_authorize_resource :class => '::Withdraws::Stock001'

      def index
        start_at = DateTime.now.ago(60 * 60 * 24)
        @one_Stock001s = @Stock001s.with_aasm_state(:accepted).order("id DESC")
        @all_Stock001s = @Stock001s.without_aasm_state(:accepted).where('created_at > ?', start_at).order("id DESC")
      end

      def show
      end

      def update
        @Stock001.process!
        redirect_to :back, notice: t('.notice')
      end

      def destroy
        @Stock001.reject!
        redirect_to :back, notice: t('.notice')
      end
    end
  end
end
