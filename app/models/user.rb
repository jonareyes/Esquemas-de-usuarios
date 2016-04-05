class User < ActiveRecord::Base
# Implementa los métodos y validaciones de tu modelo aquí.   
  def name
    "#{first_name} #{last_name}" 
  end

  def age 
     Date.today.year - birthday.day - birthday.year   
  end
  
   validates :email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create}
   validates :email, uniqueness: true
   validates_numericality_of :age, :only_integer => true, :greater_than_or_equal_to => 18
   # validates_format_of :phone,
   #            :with => /\A[0-9]{10}\Z/,
   #            :allow_blank => true,
   #            :allow_nil => true

  def before_validation_on_create
     self.phone = phone.gsub(/[^0-9]/, "")
  end   

  validates_length_of :phone, :minimum => 10
end

