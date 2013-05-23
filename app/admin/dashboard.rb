ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    #div :class => "blank_slate_container", :id => "dashboard_default_message" do
    #  span :class => "blank_slate" do
    #    span I18n.t("active_admin.dashboard_welcome.welcome")
    #    small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #  end
    #end

    # Here is an example of a simple dashboard with columns and panels.
    #

    columns do
       column do
         panel "Products" do
           ul do
             Product.all.map do |product|
               li link_to(product.title, admin_product_path(product))
             end
           end
         end
       end

       column do
         panel "Items" do
           ul do
             Item.all.map do |item|
               li link_to(item.title, admin_item_path(item))
             end
           end
         end
       end
    end
  end # content
end
