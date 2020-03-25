require "net/http"
require "fileutils"

class AliIconfont
  def initialize(url, filename)
    @url = url
    @filename = filename
  end

  def prepare
    dirname = File.dirname(@filename)
    FileUtils.mkdir_p dirname
  end

  def start
    prepare
    str = [header, content].join("\n\n")
    File.write(@filename, str)
  end

  def content
    url = URI("https:#{@url}")
    Net::HTTP.get(url)
  end

  def header
    current_time = Time.now.strftime("%Y-%m-%d %H:%M:%S")
    header = [
      "/* Update time: #{current_time}*/",
      "/* Update By: RakeAliFontRobot */",
      "/* Filename: #{@filename}*/",
    ].join "\n"
  end
end
