def read_print_source_code
  file = File.open(__FILE__, "r")
  file.readlines.each do |line|
    puts line
  end
  file.close
end