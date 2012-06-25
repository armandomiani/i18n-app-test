I18nTest::Application.routes.draw do
  
  match '/:locale' => 'home#index'
  root to: "home#index"

  match 'contact', :to => 'home#contact'
  match 'resume', :to => 'home#resume'
  match 'about', :to => 'home#about'

end

ActionDispatch::Routing::Translator.translate_from_file('config/locales/routes.yml')
# ActionDispatch::Routing::Translator.translate_from_file('config/locales/routes.yml', { :no_prefixes => true })