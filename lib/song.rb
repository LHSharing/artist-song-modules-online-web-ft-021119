require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []
  #TRACKS = []

  def initialize
    @@songs << self
  end

  def self.find_by_name(name)
    @@songs.detect{|v| v.name == name}
  end

  def self.all
    @@songs
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end

  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end
