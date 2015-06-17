require "json"

class Magic
  def self.get_sets
    begin
      return JSON.parse(File.read("./AllSets.json"))
    rescue
      puts "Ensure you have downloaded AllSets.json from http://mtgjson.com/"
      puts "It should be located in the directory where you run this script."
      exit 1
    end
  end
end
