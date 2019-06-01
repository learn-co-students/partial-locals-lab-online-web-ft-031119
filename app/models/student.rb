# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  hometown   :string
#  birthday   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'pry'
class Student < ActiveRecord::Base
  has_many :classroom_students
  has_many :classrooms, through: :classroom_students

  def self.search(name)
    match_array = []
    #binding.pry
    if name.strip.empty?
      match_array = Student.all
    else
      name = name.strip.downcase
      Student.all.each do |s|
        if s.name.downcase.start_with?(name)
          match_array << s
        end
      end
    end
    match_array
  end
end
