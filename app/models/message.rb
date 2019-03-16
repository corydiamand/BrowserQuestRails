class Message < ApplicationRecord
  def self.type_of(identifier)
    messages = {
      HELLO: 0,
      WELCOME: 1,
      SPAWN: 2,
      DESPAWN: 3,
      MOVE: 4,
      LOOTMOVE: 5,
      AGGRO: 6,
      ATTACK: 7,
      HIT: 8,
      HURT: 9,
      HEALTH: 10,
      CHAT: 11,
      LOOT: 12,
      EQUIP: 13,
      DROP: 14,
      TELEPORT: 15,
      DAMAGE: 16,
      POPULATION: 17,
      KILL: 18,
      LIST: 19,
      WHO: 20,
      ZONE: 21,
      DESTROY: 22,
      HP: 23,
      BLINK: 24,
      OPEN: 25,
      CHECK: 26
    }

    messages.key(identifier)
  end


end
