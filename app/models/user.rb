class User < ActiveRecord::Base
# Implementa los métodos y validaciones de tu modelo aquí. 
  def name
    "#{first_name} #{last_name}" 
  end

  def age 
     Date.today.year - birthday.day - birthday.year 
    
  end
end
