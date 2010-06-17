ActionController::Routing::Routes.draw do |map|
  map.resources :polls
  map.resources :poll_answers

  map.namespace(:admin, :path_prefix => 'refinery') do |admin|
    admin.resources :polls do |poll|
      poll.resources :poll_answers
    end
  end
end
