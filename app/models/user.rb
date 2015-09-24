class User < ActiveRecord::Base
  validates :age, numericality: {allow_blank: true}
end
