# == Schema Information
#
# Table name: current_companies
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class CurrentCompany < ApplicationRecord
  has_many(:connections, { :class_name => "Connection", :foreign_key => "company_id", :dependent => :destroy })
end
