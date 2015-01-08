class Message < ActiveRecord::Base
	attr_accessible :user_id, :body

  	belongs_to :conversation

  	validates_presence_of :body, :conversation_id, :user_id
end
