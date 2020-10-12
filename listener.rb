require 'unimidi'
require 'pry'

input = UniMIDI::Input.all.first
output = UniMIDI::Output.all.first

while 1 ==1
  input.gets.map do |packet|
    if packet[:data][1] == 1
      output.puts(0x90, 36, 100)
    end
  end
end
