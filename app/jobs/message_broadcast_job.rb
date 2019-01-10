class MessageBroadcastJob < ApplicationJob
  queue_as :default
  def perform(message)
    # ActionCable.server.broadcast_to(render_message(message))
    ActionCable.server.broadcast 'room_channel', message: render_message(message)
  end
  private
  def render_message(message)
    ApplicationController.renderer.render(partial: 'posts/post', locals: { post: message })
  end

end
