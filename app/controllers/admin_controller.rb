class AdminController < ApplicationController
  skip_before_filter :verify_authenticity_token
  http_basic_authenticate_with name: "admin", password: "admin"
  layout "admin"
  
  def admin
  end
  
   def signin
  end
  
   def insert_news
     marathi = params["marathi_text"]
     english = params["english_text"]
     news_link = params["news_url"]
     news = DeptNews.new()
     news.marathi_text = marathi
     news.english_text = english
     news.news_url = news_link
     news.save
     render :json => {}
   end
end
