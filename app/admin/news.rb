# -*- encoding : utf-8 -*-

ActiveAdmin.register News do

  permit_params :title, :body, :short_body

  index do
    selectable_column
    column :title
    column :short_body
    column :created_at
    column :updated_at
    default_actions
  end

  form do |f|
    f.inputs "Подробности новостей" do
      f.input :title
      f.input :short_body, :as => :rich,
        :config => { :width => '76%', :height => '400px'   }, :label => false
      f.input :body, :as => :rich,
        :config => { :width => '76%', :height => '400px'   }, :label => false
    end

    f.actions
  end

end
