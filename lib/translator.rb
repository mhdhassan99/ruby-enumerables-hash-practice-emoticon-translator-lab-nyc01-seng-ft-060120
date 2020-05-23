# require modules here
require 'pry'
require "yaml"

#hash = YAML.load_file('lib/emoticons.yml')
#binding.pry


def load_library(file)
  hash = YAML.load_file('lib/emoticons.yml')
  new_data = {}
  hash.each do |name, array| 
    new_data[name] = {}
    new_data[name][:english] = array[0]
    new_data[name][:japanese] = array[1]
  end
  new_data
end

library = load_library('./lib/emoticons.yml')
binding.pry

def get_japanese_emoticon(file)
  library = load_library('./lib/emoticons.yml')
  library.each do |name, emoti|
    if emoti[:english]
      return emoti[:japanese]
    end
  end
end




def get_english_meaning
  
end