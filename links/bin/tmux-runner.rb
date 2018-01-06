#!/usr/bin/env ruby
$exit_sent = false
$options = {}
$real_pids = []

def send_exit
  unless $exit_sent
    system("tmux send-keys -t #{$options.target} '#{$options.kill}' Enter");
    $exit_sent = true
  end
end

def send_kill
  $real_pids.each do |pid|
    puts "sending KILL to #{pid}"
    Process.kill("KILL", pid)
  end
end

Signal.trap("TERM") { send_exit }
Signal.trap("INT") { send_kill }

require 'optparse'

class Options
  attr_accessor :name, :kill, :target

  def initialize
    self.kill = "C-c"
  end
end

class Parser

  def self.parse(options)
    args = Options.new()

    opt_parser = OptionParser.new do |opts|
      opts.banner = "Usage: #{__FILE__} [options]"

      opts.on("-k", "--kill-sequence [KEY]", "Kill sequence") do |keys|
        args.kill = keys
      end
      opts.on("-nNAME", "--name NAME", "Command name") do |name|
        args.name = name
      end
      opts.on("-tPANE", "--target-pane=PANE", "Target pane") do |t|
        args.target = t
      end
      opts.on("-h", "--help", "Prints this help") do
        puts opts
        exit
      end
    end

    opt_parser.parse!(options)

    unless args.name
      STDERR.puts "No name given."
      STDERR.puts opt_parser
      exit
    end
    unless args.target
      STDERR.puts "No target pane given."
      STDERR.puts opt_parser
      exit
    end
    if ARGV.empty?
      STDERR.puts "No command given."
      STDERR.puts opt_parser
      exit
    end
    return args
  end
end
$options = Parser.parse ARGV

def child_pids_for_pane
  tty = %x{tmux list-panes -F '\#{pane_index} \#{pane_tty}' | grep "^#{$options.target} " | awk '{print $2}'}.chomp
  tty.gsub!(/.*\//, '')
  processes = %x{ ps -t #{tty} -f }.split(/\n/)
  processes.shift
  proc_chain = {}
  processes.each do |proc|
    m = proc.match(/^\s*(\d+)\s+(\d+)\s+(\d+)/)
    proc_chain[m[2]] = false
  end
  processes.each do |proc|
    m = proc.match(/^\s*(\d+)\s+(\d+)\s+(\d+)/)
    proc_chain[m[2]] = proc_chain.key?(m[3])
  end
  pids = proc_chain.select { |key, val| val }.map { |k,v| k.to_i }
  pids
end

$pid = Process.fork do
  system("tmux send-keys -R -t #{$options.target} 'reset; #{ARGV.join(%{ })}; tmux wait-for -S tmux-#{$options.name}' Enter \\; wait-for tmux-#{$options.name}")
end
sleep 1
$real_pids = child_pids_for_pane
puts "forked pids #{$real_pids}"
Process.wait
puts("terminated")
