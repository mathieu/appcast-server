ActiveAdmin.register Product do

  form do |f|

    f.semantic_errors *f.object.errors.keys

    f.inputs "Details" do
      f.input :title
      f.input :name
      f.input :description

      f.input :items

      f.input :users , :as => :check_boxes, :member_label => :email
    end

    f.buttons

  end

end
