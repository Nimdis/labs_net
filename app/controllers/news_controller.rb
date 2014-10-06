# -*- encoding : utf-8 -*-

class NewsController < ApplicationController
  inherit_resources
  actions :show, :index
  has_scope :sort_by_date, :default => nil, :allow_blank => true

  protected

  def collection
    @news ||= end_of_association_chain.paginate(:page => params[:page], :per_page => 5)
  end
end
