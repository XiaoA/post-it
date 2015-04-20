class Vote < ActiveRecord::Base
  belongs_to :creator, class_name: 'user', foreign_key: 'user_id '
  belongs_to :voteable, polymorphic: true
end
