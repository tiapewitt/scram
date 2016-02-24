class AddCachedVotesToSubmissions < ActiveRecord::Migration
  def self.up
    add_column :submissions, :cached_votes_total, :integer, :default => 0
    add_column :submissions, :cached_votes_score, :integer, :default => 0
    add_column :submissions, :cached_votes_up, :integer, :default => 0
    add_column :submissions, :cached_weighted_score, :integer, :default => 0
    add_column :submissions, :cached_weighted_total, :integer, :default => 0
    add_column :submissions, :cached_weighted_average, :float, :default => 0.0
  end

  def self.down
  	remove_column :submissions, :cached_votes_total
  	remove_column :submissions, :cached_votes_score
  	remove_column :submissions, :cached_votes_up
  	remove_column :submissions, :cached_weighted_score
  	remove_column :submissions, :cached_weighted_total
  	remove_column :submissions, :cached_weighted_average
  end
end
