class Message < ActiveRecord::Base

  	belongs_to :conversation

  	validates_presence_of :body, :conversation_id, :user_id
end
