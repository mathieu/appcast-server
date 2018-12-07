require 'active_record/fixtures'

Product.delete_all
Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "products")