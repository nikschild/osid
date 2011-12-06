class AddReviewedToEvents < ActiveRecord::Migration
  def self.up
    add_column :events, :reviewed, :boolean
  end

  def self.down
    remove_column :events, :reviewed
  end
end
