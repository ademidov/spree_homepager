module Spree
  class Banner < ActiveRecord::Base
    acts_as_list
    has_attached_file :image, :styles => {:thumb => "100x100>" }
    default_scope :order => "position"

    scope :visible, where(:visible => true)
    scope :at_place, lambda {|place| where(:place => place) }

  end
end