class Species < ActiveRecord::Base
	require 'open-uri'

	has_many :trees

	validates :scientific_name, presence: true 


	# def initialize(scientific_name)
 #    @tree_url = "http://en.wikipedia.org/wiki/" + scientific_name.gsub(" ", "_")
 #    @page_connection = Nokogiri::HTML(open(@tree_url))
 #  end

 #  def self.species_scrape
 #    self.common_name = page_connection.css('.infobox').css('th').first.text
 #    self.range_map = "http://en.wikipedia.org/wiki/File:" + scientific_name.gsub(" ", "_") + "_range_map_1.png"
 #  end

end
