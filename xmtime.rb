#!/usr/bin/env ruby
def mem(pid); `ps p #{pid} -o rss`.split.last.to_i; end
t = Time.now

allMem = 0
def execTilDone(*procargs)
  pid = Process.spawn(*procargs)
  mm = 0

  Thread.new do
    mm = mem(pid)
    while true
      sleep 0.3
      m = mem(pid)
      mm = m if m > mm
    end
  end
  Process.waitall
  return mm
end

subargv = []

ARGV.each do |a|
  if a.include? ':'
    allMem = allMem + execTilDone(*subargv)
    subargv.clear
  else
    subargv.push(a)
  end
end

if subargv.length > 0
  allMem = allMem + execTilDone(*subargv)
end

STDERR.puts "== %.2fs, %.1fMb ==" % [Time.now - t, allMem / 1024.0]

