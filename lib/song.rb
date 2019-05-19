require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  include Paramable::InstantPoop
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  def initialize
    super
    
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def self.all
    @@songs
  end


  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
