#!/usr/bin/env ruby
$exit_sent = false

def send_exit
  unless $exit_sent
    $exit_sent = true
    system("tmux send-keys #{ARGV.join(' ')} 'e' Enter");
  end
end

Signal.trap("TERM") { send_exit }
Signal.trap("INT") { }

Process.fork do
  system("tmux send-keys #{ARGV.join(' ')} 'guard; tmux wait-for -S tmux-guard' Enter \\; wait-for tmux-guard")
end
sleep 1
Process.wait
# puts("guard stopped")
