class Api::GamePagesController < ApplicationController

  def fortune_method
    fortunes = ['You will have no idea.', 'You are destined for destiny!', 'Your future is destined to happen!', "You will get your paycheck on payday, unless you lose your job, or something happens to your check, or you tried to set up direct deposit, but you wrote down the wrong routing number, which is such a pain in the ass, but you have to go deal with it, otherwise the cable is getting shut off.", "You are not going to get any taller.", "You will lose weight, but don't worry, you'll find it again come holiday season."]
    @fortune = fortunes.sample
    render 'my_fortune.json.jbuilder'
  end
end
