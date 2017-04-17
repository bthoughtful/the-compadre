class NewslettersController < ApplicationController
  require 'httparty'

  def signup
    puts "\nnew newsletter sign up......"

    list_id = '129f3ea30c'
    url = "https://us15.api.mailchimp.com/3.0/lists/#{list_id}/members"
    options = {
      basic_auth: { username: "apikey", password: ENV['MC_API_KEY'] },
      body: {
        "email_address": params[:email],
        "status": "pending"
      }.to_json
    }

    response = HTTParty.post(url, options)

    puts '_______________________________'
    puts "respone.body: #{response.body}"
    puts "response.code: #{response.code}"
    puts "response.message: #{response.message}"
    puts "response.headers: #{response.headers.inspect}"
    puts '_______________________________'

    if response.code == 200
      puts "Success\n"
      # flash.now[:notice] = 'Thanks for signing up! Please check your email to confirm your subscription.'
      # render 'static_pages/index'
      redirect_to(root_path, notice: 'Thanks for signing up! Please check your email to confirm your subscription.')
    else
      body = JSON.parse(response.body)
      puts "ERROR: #{body["title"]}: #{body["detail"]}\n"
      # flash.now[:error] = "ERROR: #{body["title"]}: #{body["detail"]}"
      redirect_to(root_path, notice: "ERROR: #{body["title"]}: #{body["detail"]}")
    end
  end
end
