module Caff
  def execute on_off
    if %w{on off}.include? on_off
      tell_caffeine "turn #{on_off}"
    else
      puts 'usage: caff [on|off]'
    end
    show_status
  end

  def show_status
    current = tell_caffeine('active') == 'true' ? 'on' : 'off'
    puts "caffeine is now #{current}"
  end

  def tell_caffeine command
    `osascript -e 'tell application \"Caffeine\" to #{command}'`.chomp
  end
end