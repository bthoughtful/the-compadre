class NewslettersController < ApplicationController
  require 'httparty'

  def create
    puts "\nnew newsletter sign up......"

    url = "https://us15.api.mailchimp.com/3.0/lists/#{ENV['MC_LIST_ID']}/members"
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
      flash[:success] = 'Thanks for signing up! Please check your email to confirm your subscription.'
      redirect_to root_path
    else
      body = JSON.parse(response.body)
      puts "ERROR: #{body["title"]}: #{body["detail"]}\n"
      flash[:error] = "ERROR: #{body["title"]}: #{body["detail"]}"
      redirect_to root_path
    end
  end
end
