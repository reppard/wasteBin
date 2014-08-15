class WasteItem < ActiveRecord::Base
  def self.create_cloud
    weights = [*1..80]
    content = self.all.collect{ |item| item.content.downcase.gsub(/[^0-9A-Za-z]\s/, '') }
    word_array = content.join(' ').split(' ')
    word_array.sort_by!{|x| word_array.count(x)}
    word_array = word_array.uniq

    word_objects = ""

    (1..100).step(3).to_a.reverse.each do |n|
      word_objects << "{text:\"#{word_array.pop}\",weight:#{n}},"
    end
    word_objects

  end
end
