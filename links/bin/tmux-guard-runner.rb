#!/usr/bin/env ruby
$exit_sent = false

def send_exit
  unless $exit_sent
    system("tmux send-keys #{ARGV.join(' ')} 'e' Enter");
    $exit_sent = true
  end
end

Signal.trap("TERM") { send_exit }
Signal.trap("INT") { send_exit }

system("tmux send-keys #{ARGV.join(' ')} 'guard; tmux wait-for -S tmux-guard' Enter \\; wait-for tmux-guard")
puts("guard stopped")

