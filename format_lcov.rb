#!/usr/bin/env ruby

lcov_file_data = File.open("./CoverageData/info.lcov").read
lcov_file_data.gsub!(/SF:.+__main__\//, "SF: ")
File.write("./CoverageData/info.lcov", lcov_file_data)
