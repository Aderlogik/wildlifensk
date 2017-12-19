class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  $news_info = DeptNews.select(:marathi_text, :english_text, :news_url).order('created_at desc').limit(5)
end
