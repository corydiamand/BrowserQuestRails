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
    if Message.type_of(data["body"][0]) == :HELLO
    ActionCable.server.broadcast "1", {
      data: [1,5660,'Cory',16,233,230].to_json
    }
      #[Types.Messages.WELCOME, self.id, self.name, self.x, self.y, self.hitPoints]
    end
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
