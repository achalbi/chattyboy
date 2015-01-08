class MessagesController < ApplicationController

  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = @conversation.messages.build(message_params)
    @message.user_id = @conversation.sender_id
    @message.save!
 
    @path = conversation_path(@conversation)

    respond_to do |format|
      format.json { render :json => @path }
    end
  end
 
  private
 
  def message_params
    params.require(:message).permit(:body)
  end

end
