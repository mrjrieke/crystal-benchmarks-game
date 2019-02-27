#!/usr/bin/env ruby
def mem(pid); `ps p #{pid} -o rss`.split.last.to_i; end
def powerlines(pid); `cat ./powerapi#{pid}.log | awk -F\= '{print $6}' | grep -v "0.0 mW" | wc -l`.to_i; end
def power(pid); `cat ./powerapi#{pid}.log | awk -F\= '{print $6}' | awk '{print $1}' | awk '{total = total + sprintf("%f", $1)}END{printf "%.6f", total}'`.to_f; end

allTime = 0
allMem = 0
allPower = 0.0
def execTilDone(*procargs)
  ppTempl = 'powerapi modules procfs-cpu-simple monitor --frequency 100 --pids %{pid} --file ./powerapi%{pid}.log'
  powerApiTempl = './powerapi%{pid}.log'
  pid = Process.spawn(*procargs)
  Process.kill(:SIGSTOP, pid)
  powerproc = ppTempl % { :pid => pid }
  powerApiLog = powerApiTempl % { :pid => pid }
  powerpid = Process.spawn(powerproc)
  while File.exists?(powerApiLog) == false or File.size(powerApiLog) == 0
      sleep 0.3
  end
  Process.kill(:SIGCONT, pid)
  t = Time.now

  mm = 0
  pp = 0
  tt = 0

  Thread.new do
    mm = mem(pid)
    while true
      sleep 0.3
      m = mem(pid)
      p = power(pid)
      pp = p if p > pp
      mm = m if m > mm
    end
  end
  Process.waitpid(pid, 0)
  tt = Time.now - t
  p = power(pid)
  lines = powerlines(pid)
  p = (p / lines)

  pp = p if p > pp
  Process.kill(:SIGKILL, powerpid)
  return mm, pp, tt
end

subargv = []

ARGV.each do |a|
  if a.include? ':'
    am, ap, at = execTilDone(*subargv)
    allMem = allMem + am
    allPower = allPower + ap
    allTime = allTime + at
    subargv.clear
  else
    subargv.push(a)
  end
end

if subargv.length > 0
  am, ap, at = execTilDone(*subargv)
  allMem = allMem + am
  allPower = allPower + ap
  allTime = allTime + at
end

discharge = (allPower * allTime / 3600)

STDERR.puts "== %.2fs, %.1fMb, %.2fmW ==" % [allTime, allMem / 1024.0, discharge]

