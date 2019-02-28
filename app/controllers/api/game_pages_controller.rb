class Api::GamePagesController < ApplicationController

  def fortune_method
    fortunes = ['You will have no idea.', 'You are destined for destiny!', 'Your future is destined to happen!', "You will get your paycheck on payday, unless you lose your job, or something happens to your check, or you tried to set up direct deposit, but you wrote down the wrong routing number, which is such a pain in the ass, but you have to go deal with it, otherwise the cable is getting shut off.", "You are not going to get any taller.", "You will lose weight, but don't worry, you'll find it again come holiday season."]
    @fortune = fortunes.sample
    render 'my_fortune.json.jbuilder'
  end
  def lottery_method
    @winning_numbers =[]
    6.times do
      @winning_numbers << rand(60) + 1 
    end
    render 'my_lottery.json.jbuilder'
  end  
  def song_method
    x = 99
    song = []
    100.times do
      if x == 1
        song << ["1 bottle of beer on the wall, 1 bottle of beer. Take one down, pass it around, no more bottles of beer on the wall."]
        x -= 1
      elsif x == 0
        song << ["No more bottles of beer on the wall, no more bottles of beer. Go to the store, and buy some more, 99 bottles of beer on the wall."]
      else
        song << ["#{x} bottles of beer on the wall, #{x} bottles of beer. Take one down, pass it around, #{x-1} bottles of beer on the wall."]
      x -=1
      end
    end
    @song = song
    render 'my_song.json.jbuilder'
  end
end
