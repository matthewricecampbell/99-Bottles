class Bottles
  def song
    verses(99, 0)
  end

  def verse(line_number)
    line_number == 0 ? final_verse : main_verse(line_number)
  end

  def verses(line_number_1, line_number_2)
    verses = (line_number_2..line_number_1).to_a
    verses_array = []
    verses.each do |line_number|
      verse = line_number == 0 ? final_verse : main_verse(line_number)
      verses_array << verse
    end
     verses_array.reverse.join("\n")
  end

  def main_verse(line_number)
    initial_bottle = line_number == 1 ? "bottle" : "bottles"
    final_bottle = line_number - 1 == 1 ? "bottle" : "bottles" 
    final_phrase = line_number - 1 == 0 ? "no more" : line_number - 1
    beer_reference = line_number == 1 ? "it" : "one"

    "#{line_number} #{initial_bottle} of beer on the wall, " +
    "#{line_number} #{initial_bottle} of beer.\n" +
    "Take #{beer_reference} down and pass it around, " +
    "#{final_phrase} #{final_bottle} of beer on the wall.\n"
  end

  def final_verse
    "No more bottles of beer on the wall, no more bottles of beer.\n" +
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end
end
