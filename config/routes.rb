Erp::Vnmechanical::Engine.routes.draw do
  root to: "frontend/home#index"
  
  get "gioi-thieu.html" => "frontend/information#about_us", as: :about_us
  
  get "tin-tuc.html" => "frontend/blog#index", as: :blog
  get "tin-tuc/:title-n(:blog_id).html" => "frontend/blog#detail", as: :blog_detail
  
  get "tuyen-dung.html" => "frontend/recruitment#index", as: :recruitment
  get "tuyen-dung/chi-tiet.html" => "frontend/recruitment#detail", as: :recruitment_detail
  
  get "hinh-anh.html" => "frontend/gallery#index", as: :gallery
  
  get "lien-he.html" => "frontend/information#contact_us", as: :contact_us
  post "lien-he.html" => "frontend/information#contact_us"
  
  get "dich-vu.html" => "frontend/service#index", as: :service
  get "dich-vu/:title-s(:service_id).html" => "frontend/service#detail", as: :service_detail
  
  get "san-pham.html" => "frontend/product#category", as: :all_product
  get "chuyen-muc(/:menu_id)(/:title).html" => "frontend/product#category", as: :product_listing
  get "san-pham/:title-p(:product_id).html" => "frontend/product#detail", as: :product_detail
  
  #get "gio-hang.html" => "frontend/shopping#cart", as: :shopping_cart
  #get "dat-hang.html" => "frontend/shopping#checkout", as: :shopping_checkout
  #get "dat-hang/thanh-cong.html" => "frontend/shopping#finish", as: :shopping_finish
  #
  
end