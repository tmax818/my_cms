```Bash
[my_cms (master)]$ rails db:create
Created database 'my_cms_development'
Created database 'my_cms_test'
[my_cms (master)]$ rails g controller Sections index show new edit delete
...
Running via Spring preloader in process 23062
      create  app/controllers/sections_controller.rb
       route  get 'sections/index'
get 'sections/show'
get 'sections/new'
get 'sections/edit'
get 'sections/delete'
      invoke  erb
      create    app/views/sections
      create    app/views/sections/index.html.erb
      create    app/views/sections/show.html.erb
      create    app/views/sections/new.html.erb
      create    app/views/sections/edit.html.erb
      create    app/views/sections/delete.html.erb
      invoke  test_unit
      create    test/controllers/sections_controller_test.rb
      invoke  helper
      create    app/helpers/sections_helper.rb
      invoke    test_unit
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/sections.coffee
      invoke    scss
      create      app/assets/stylesheets/sections.scss
      [my_cms (master)]$ rails routes
                         Prefix Verb   URI Pattern                                                                              Controller#Action
                           root GET    /                                                                                        sections#index
                 delete_section GET    /sections/:id/delete(.:format)                                                           sections#delete
                       sections GET    /sections(.:format)                                                                      sections#index
                                POST   /sections(.:format)                                                                      sections#create
                    new_section GET    /sections/new(.:format)                                                                  sections#new
                   edit_section GET    /sections/:id/edit(.:format)                                                             sections#edit
                        section GET    /sections/:id(.:format)                                                                  sections#show
                                PATCH  /sections/:id(.:format)                                                                  sections#update
                                PUT    /sections/:id(.:format)                                                                  sections#update
                                DELETE /sections/:id(.:format)                                                                  sections#destroy
             rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
      rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
             rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
      update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
           rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

```

```Ruby
Rails.application.routes.draw do

  root 'sections#index'

  resources :sections do
      member do
        get :delete
      end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

```
