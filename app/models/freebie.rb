class Freebie < ActiveRecord::Base
  belongs_to :dev
  belongs_to :company 

  def dev_name
    self.dev.name
  end 

  def company_name
    self.company.name
  end 

  def print_details
    "#{self.dev_name} owns a #{self.freebie.item_name} from #{self.company_name}"
  end 

  
end
