Rails.application.routes.draw do
  resources :exams
  resources :questions
  resources :subcourses
  resources :courses
  resources :logins
  resources :admins
  resources :examinees

  get 'examineesignin', to: 'logins#examineesignin'
  root 'home#index'
  get 'signin', to: 'home#signin'
  get 'signexaminee', to: 'home#signexaminee'
  get 'home', to: 'home#home'
  get 'about', to: 'home#about'
  get 'signup', to: 'user#new'
  resources :user, except: [:new]
  get 'examinee_home', to: 'home#examinee_home'
  get 'sbucourse_page', to: 'home#subcourse_page'
  get 'sbucourse_page2', to: 'home#subcourse_page2'
  get 'subcourse_MBA', to: 'home#subcourse_MBA'
  get 'question_type', to: 'home#question_type'
  get 'question_type2', to: 'home#question_type2'
  get 'questionsType_MBA', to: 'home#questionsType_MBA'
  get 'low_question', to: 'home#low_question'
  get 'medium_question', to: 'home#medium_question'

  get 'high_question', to: 'home#high_question'
  get 'low_quesmtech', to: 'home#low_quesmtech'
  get 'high_quesmtech', to: 'home#high_quesmtech'
  get 'medium_quesmtech', to: 'home#medium_quesmtech'
  get 'low_quesmba', to: 'home#low_quesmba'
  get 'medium_quesmba', to: 'home#medium_quesmba'
  get 'high_quesmba', to: 'home#high_quesmba'

  get 'questiontype_eng_marketing', to: 'home#questiontype_eng_marketing'
  get 'questiontype_qa_enterprenur', to: 'home#questiontype_qa_enterprenur'
  get 'questiontype_eng_enterprenur', to: 'home#questiontype_eng_enterprenur'
  get 'questiontype_qa_strategy', to: 'home#questiontype_qa_strategy'
  get 'questiontype_eng_strategy', to: 'home#questiontype_eng_strategy'

  get 'low_qa_strategy', to: 'home#low_qa_strategy'
  get 'medium_qa_strategy', to: 'home#medium_qa_strategy'
  get 'high_qa_strategy', to: 'home#high_qa_strategy'
  get 'low_eng_strategy', to: 'home#low_eng_strategy'
  get 'medium_eng_strategy', to: 'home#medium_eng_strategy'
  get 'high_eng_strategy', to: 'home#high_eng_strategy'

  get 'low_qa_enterprenur', to: 'home#low_qa_enterprenur'
  get 'medium_qa_enterprenur', to: 'home#medium_qa_enterprenur'
  get 'high_qa_enterprenur', to: 'home#high_qa_enterprenur'
  get 'low_eng_enterprenur', to: 'home#low_eng_enterprenur'
  get 'medium_eng_enterprenur', to: 'home#medium_eng_enterprenur'
  get 'high_eng_enterprenur', to: 'home#high_eng_enterprenur'

  get 'low_eng_marketing', to: 'home#low_eng_marketing'
  get 'medium_eng_marketing', to: 'home#medium_eng_marketing'
  get 'high_eng_marketing', to: 'home#high_eng_marketing'

  get 'index', to: 'exam_question#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
