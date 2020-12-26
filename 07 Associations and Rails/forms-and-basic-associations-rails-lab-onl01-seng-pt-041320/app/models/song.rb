class Song < ActiveRecord::Base
  # add associations here
  has_many :notes
  belongs_to :artist
  belongs_to :genre

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

  def genre_name=(name)
    self.genre = Genre.find_or_create_by(name: name)
  end

  def genre_name
    self.genre ? self.genre.name : nil
  end

  def note_shapes=(shapes)
    shapes.each do |shape|
      if shape.strip != ''
        self.notes.build(content: shape)
      end
    end
  end

  def note_shapes
    self.notes.map(&:content)
  end
end