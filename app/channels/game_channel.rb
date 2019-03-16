class GameChannel < ApplicationCable::Channel
  def subscribed
    #current_user.appear
    stream_from self.current_user
    ActionCable.server.broadcast "1", {
      data: "go"
    }
  end

  def unsubscribed
    #current_user.disappear
    puts "Unsubscribed"
  end

  def message(data)
    puts data
  end

  def appear(data)
    #current_user.appear(on: data['appearing_on'])
    puts "Appear "
  end

  def away
    #current_user.away
    puts "Away"
  end
end
