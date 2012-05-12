module Spree
  class Banner < ActiveRecord::Base
    
    attr_accessible :tagline, :target_url, :visible, :place, :position
    
    acts_as_list
    has_attached_file :image,
      :styles => {:thumb => "100x100>" },
      :default_style => :original,
      :url => '/spree/banners/:id/:style/:basename.:extension',
      :path => ':rails_root/public/spree/banners/:id/:style/:basename.:extension'

    default_scope :order => "position"

    scope :visible, where(:visible => true)
    scope :at_place, lambda {|place| visible.where(:place => place) }

  end
end