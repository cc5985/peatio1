module Admin
  module Withdraws
    class ShangsController < ::Admin::Withdraws::BaseController
      load_and_authorize_resource :class => '::Withdraws::Shang'

      def index
        start_at = DateTime.now.ago(60 * 60 * 24)
        @one_Shangs = @Shangs.with_aasm_state(:accepted).order("id DESC")
        @all_Shangs = @Shangs.without_aasm_state(:accepted).where('created_at > ?', start_at).order("id DESC")
      end

      def show
      end

      def update
        @Shang.process!
        redirect_to :back, notice: t('.notice')
      end

      def destroy
        @Shang.reject!
        redirect_to :back, notice: t('.notice')
      end
    end
  end
end
