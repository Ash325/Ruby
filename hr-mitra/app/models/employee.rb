class Employee < ApplicationRecord

    has_many :documents
    # dependent: :delete_all
  # The model name for has_many must be plular



    validates :F_Name, :L_Name, :Department, :Adreess, :date_of_birth, presence:true
    validates :Mail_Id, :Contact_No, presence:true, uniqueness:true 

    def name
        "#{self.F_Name} #{self.L_Name}".strip
    end    
    # here ".strip" is to reduce the /n or space between 

    def name_mail
      "#{self.F_Name} (#{self.Mail_Id})"
    end

end
 

