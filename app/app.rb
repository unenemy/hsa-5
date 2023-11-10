require 'sinatra'
require 'mongoid'

Mongoid.load!(File.join(File.dirname(__FILE__), 'mongoid.yml'))

class Post
  include Mongoid::Document

  field :title, type: String
  field :body, type: String
end

get '/posts' do
  Post.all.to_json
end

get '/create_post' do
  post = Post.create!(params[:post])
  Post.all.to_json
end