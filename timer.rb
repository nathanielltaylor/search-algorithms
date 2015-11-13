require 'benchmark'
require_relative 'search'

ordered_names = IO.read('ordered_names.txt').split(',')
unordered_names = IO.read('unordered_names.txt').split(',')
name_to_find = 'Mark'

Benchmark.bm(30) do |x|
  x.report("Linear Unordered List Search:") { linear_search(unordered_names, name_to_find) }
  x.report("Linear Ordered List Search:") { linear_search(ordered_names, name_to_find) }
  x.report("Binary Ordered List Search:") { binary_search(ordered_names, name_to_find) }
  x.report("Recursive Ordered List Search:") { binary_recursive_search(ordered_names, name_to_find) }
end
