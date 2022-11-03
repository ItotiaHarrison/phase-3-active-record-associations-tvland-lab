class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def characters
    Character.where(actor_id: self.id)
  end

  def shows
    Show.where(actor_id: self.id)
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.characters.collect do |character|
      "#{character.name} - #{character.show.name}"
    end
  end
  

end