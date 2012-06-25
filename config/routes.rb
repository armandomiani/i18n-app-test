I18nTest::Application.routes.draw do

  scope "(:locale)", :locale => /en|pt/ do
    resources :home
  end

  root to: "home#index"

end
