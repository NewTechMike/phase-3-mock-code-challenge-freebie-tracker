class Dev < ActiveRecord::Base
  has_many :freebies
  belongs_to :company

  def freebie_collection 
    #returns a collection of freebies from a company
    self.freebies do |name|
      name.item_name
    end 
  end 

  def company_collected
    self.company do |name|
      name.name
    end
  end 

  def received_one?(item_name)
    freebies.each do |i_name|
      if freeies.i_name == item_name
        true
      else
        false
      end 
    end
  end

end
