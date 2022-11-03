class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def actor
    Actor.find(self.actor_id)
  end

  def show
    Show.find(self.show_id)
  end

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
end