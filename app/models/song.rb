class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
    # Hint: you won't want to create an artist record every time this method is called, only if an Drake is *not found*
    # if Artist.all.map{|artist| artist.name}.include? "Drake"
    #   drake = Artist.find_by(name: "Drake")
    #   drake.songs << self
    #   else
    #     drake = Artist.create(name: "Drake")
    #     drake.songs << self
    # end
    # a = Artist.find_by(name: "Drake")
    # b = Artist.create(name: "Drake")
    # a ||= b
    # a.songs << self
    # Artist.find_by(name: "Drake") ||= Artist.create(name: "Drake")
    # drake = Artist.find_by(name: "Drake")
    # drake.songs << self
    drake = Artist.find_by(name: "Drake")
    drake ||= Artist.create(name: "Drake")
    drake.songs << self
  end
end