class GameChannel < ApplicationCable::Channel
  def subscribed
    #current_user.appear
    puts "Subscribed"
  end

  def unsubscribed
    #current_user.disappear
    puts "Unsubscribed"
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
