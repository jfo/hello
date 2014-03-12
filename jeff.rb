class Human

  attr_reader :corporeal_being, :consciousness

  def initialize
    @corporeal_being = true
    @consciousness = true
  end

  #TODO: figure out universal truths, meaning of life, etc... (why is there no Stack Overflow thread on that?)

end

class Jeff < Human

  attr_reader :s, :l, :edumactions, :jorbs, :contacts, :beard

  def initialize

    super

    @a = age_right_now
    @s = 'm'
    @l = 'Brooklyn, NY'
    @beard = false

    @edumaction = { :undergrad => 'BA Music and English, UNC Chapel Hill 2005',
                    :grad => 'MM Jazz Guitar Performance, NYU 2011'}

    @jorbs = { 2005 => 'Scuba Diver',
               2006 => 'ESL Teacher in Japan (like JET, but not)',
               2008 => 'Various horrible NY temp stuff',
               2009 => 'Adjunct Faculty of Music, NYU',
               2011 => ['Musician', 'Owner and Teacher at Guitar from the Ground Up', 'Freelance Photographer']}

    @contacts = { :email => 'jeffowler@gmail.com',
                 :phone => '336-693-5342',
                 :twitter => '@jeffowler',
                 :github => 'http://www.github.com/urthbound',
                 :flickr => 'http://www.flickr.com/photos/monkeywithamirror'}
  end


  def hello
    if RbConfig::CONFIG['host_os'].scan(/darwin|mac os/)
      system('say hello to you too!')
    else
      puts 'Hello!'
    end
  end


  def show_picture
    print File.open('picture.txt', 'rb').read
  end


  def shave
    @beard = false
    puts 'Ok, I shaved!'
  end


  def dont_shave_for_a_while
    @beard = true
    puts "I'm going for that Jeff Bridges / Scandinavian fisherman look"
  end


  def a
    @a = age_right_now
  end


  private

  def age_right_now
    birthday = Time.new('1983','02','15','16','32')
    seconds_alive = (Time.now - birthday).to_i
    minutes_alive = seconds_alive / 60
    hours_alive = minutes_alive / 60
    days_alive = (hours_alive / 24)
    years_alive = days_alive / 365

    "#{years_alive} years, #{(days_alive % 365) - leaps} days, #{hours_alive % 24} hours, #{minutes_alive % 60} minutes, and #{seconds_alive % 60} seconds."
  end


  def leaps
    leaps = 0
    (1983..Time.now.year).each do |year|
      leaps += 1 if year % 4 == 0
    end
    leaps
  end

end
