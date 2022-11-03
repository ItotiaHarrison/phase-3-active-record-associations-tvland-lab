class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def characters
    Character.where(show_id: self.id)
  end

  def network
    Network.find(self.network_id)
  end

  def actors_list
    self.actors.collect do |actor|
      actor.full_name
    end
  end
end