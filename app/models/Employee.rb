class Employee < ActiveRecord::Base
    has_many :snacks
    has_many :comments
end