class Message
  attr_reader :content, :mood, :time

  def initialize(content, mood)
    @content = content
    @mood = mood
    @time = Time.now
  end
end

class MessageApp
  attr_reader :title, :messages

  def initialize(title)
    @title  = title
    @messages = [] # A fresh clean array
                 # for storing Messages
  end

  def add_a_message(content, mood)
    # The << means add to the end of the array
    @messages << Message.new(content, mood)
  end

  def show_timeline
    puts "#{@title} has #{@messages.count} Messages"

    @messages.sort_by { |t|
      t.time
    }.reverse.each { |t|
      puts "#{t.content} #{t.time}"
    }
  end
end

myapp = MessageApp.new "My messages"
