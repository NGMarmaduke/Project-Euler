#!/usr/bin/env ruby
require 'fileutils'

problem_number = ARGV[0]

dirname = "problem_#{problem_number}"
unless File.directory?(dirname)
  FileUtils.mkdir_p(dirname)

  out_file = File.new(File.join(dirname, "problem_#{problem_number}.rb"), "w+")

  out_file.puts "#!/usr/bin/env ruby"
  out_file.puts "require_relative '../base_classes/problem_base'"
  out_file.puts ""
  out_file.puts "PROBLEM: #{ARGV[1]}" if ARGV[1]
  out_file.puts ""
  out_file.puts "class Problem#{problem_number} < ProblemBase"
  out_file.puts "  def solve"
  out_file.puts "  end"
  out_file.puts "end"
  out_file.puts ""
  out_file.puts "puts Problem#{problem_number}.new().solve"
  out_file.puts ""

  out_file.close
else
  abort "Directory already exsists"
end
