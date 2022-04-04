require "json"
require "date"

# input file with one metric per line as JSON
INPUT="/in/metrics.jsonl"
OUTPUT="/out/metrics.jsonl"

# create/open output file
output = File.open(OUTPUT, "w+")

# loop input metrics
File.open(INPUT).each_with_index do |line, line_no|

  # parse metric data
  metric = begin
    JSON.parse(line)
  rescue
    # if error, output error message
    # and exit with "error code" ex.
    puts "Invalid metric on line #{line_no}"
    exit 1
  end

  # get current metric name
  metric_name = metric["metric"]

  # as a simple example, let's just multiply value with 2
  metric["value"] *= 2

  # set new metric name (else HUB will overwrite existing, if allowed)
  metric["metric"] = "#{metric_name}_doubled"

  # write to output, one metric per line as JSON
  output << metric.to_json
end
output.close

# all done!

