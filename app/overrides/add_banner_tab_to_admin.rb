Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "banner_admin_tab",
                     :insert_bottom => "[data-hook='admin_tabs']",
                     :text => "<%= tab(:banners) %>",
                     :disabled => false)