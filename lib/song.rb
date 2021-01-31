class Song
    attr_reader :name ,:genre, :artist
    

    @@count = 0
    @@artists = []
    @@genres = []
    #@@genre_count = Hash.new(0)
    


    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists<<@artist
        @@genres << @genre
        #@@genres.each{|genre| @@genre_count[genre] += 1}
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count = Hash.new(0)
        @@genres.each do |genre| 
            if genre_count[genre] 
                genre_count[genre] += 1
            else
                genre_count[genre] 
            end
        end
        genre_count
    end

    def self.artist_count
        artist_count = Hash.new(0)
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1
            else
                artist_count[artist]
            end
        end
        artist_count
    end
end