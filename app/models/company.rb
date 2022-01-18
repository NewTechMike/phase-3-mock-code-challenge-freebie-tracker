class Company < ActiveRecord::Base
  has_many :freebies
  has_many :devs, through: :freebies

  def freebie_collection 
    #returns a collection of freebies from a company
    self.freebies do |name|
      name.item_name
    end 
  end 

  def dev_collected
    self.devs do |name|
      name.name
    end
  end 

  def give_freebie(dev, item_name, value)
    Freebie.create(item_name: item_name, value: value, dev_id: dev.id, company_id: self.id)
  
  end 

  def oldset_company
    f_years = self.companies.each do |name|
      self.name.founding_year
    end 
    f_years.min
  end 
end
