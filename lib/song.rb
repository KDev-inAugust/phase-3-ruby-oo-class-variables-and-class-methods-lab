require 'pry'

class Song
    @@count=0
    @@genres=[]
    @@artists=[]

    attr_accessor:name
    attr_accessor:artist
    attr_accessor:genre

    def initialize(name, artist, genre)
        @name=name
        @genre=genre
        @artist=artist
        @@genres<<genre
        @@artists<<artist
        @@count+=1
    end

    def self.artists
        @@artists.uniq
    end
    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        count_hash=Hash.new
        @@genres.map{|index| 
            if count_hash.include? index
            puts "incremented: " + index
            count_hash[index]+=1
            else  puts "else incremented: " + index 
            count_hash[index]=1   
            end
        }
        count_hash
    end

    def self.artist_count
        count_hash=Hash.new
        @@artists.map{|index|
        if count_hash.include? index
            count_hash[index]+=1
        else
            count_hash[index]=1
        end}
        count_hash
    end

    def self.count
        @@count
    end
end

nnProbs=Song.new("99 Problems", "Jay-Z", "rap")
what=Song.new("what", "Kane", "rap")
allGood=Song.new("allgood", "MiddleMan", "Jazz")
stillNice=Song.new("stillNice", "Kane", "Jazz")


binding.pry

