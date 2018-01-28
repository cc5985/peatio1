module Admin
  module Deposits
    class Stock001sController < ::Admin::Deposits::BaseController
      load_and_authorize_resource :class => '::Deposits::Stock001'

      def index
        start_at = DateTime.now.ago(60 * 60 * 24 * 365)
        @Stock001s = @Stock001s.includes(:member).
            where('created_at > ?', start_at).
            order('id DESC').page(params[:page]).per(20)
      end

      def update
        @Stock001.accept! if @Stock001.may_accept?
        redirect_to :back, notice: t('.notice')
      end
    end
  end
end
