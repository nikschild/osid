class Blogpost < ActiveRecord::Base
  belongs_to :user
  
  def self.search(search, page)
        paginate :per_page => 6, :page => page,
           :conditions => ['header like ?', "%#{search}%"],
           :order => 'created_at DESC'
  end
end
