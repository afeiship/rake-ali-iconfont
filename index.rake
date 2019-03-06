require "net/http"
require "fileutils"

# rake hello[afei,bash]
namespace :iconfont do
  desc "Sync styles from css fonts link"
  task :sync_css, [:url, :filename] do |task, args|
    args.with_defaults(:filename => "./assets/iconfont.css")
    filename = args[:filename]

    # create dir:
    dirname = File.dirname(filename)
    FileUtils.mkdir_p dirname

    # request css styles:
    url = URI("https:#{args[:url]}")
    current_time = Time.now.strftime("%Y-%m-%d %H:%M:%S")
    css_content = Net::HTTP.get(url)
    css_header = [
      "/* Update time: #{current_time}*/",
      "/* Update By: Afei */",
      "/* Filename: #{args[:filename]}*/",
    ].join "\n"

    # create filename:
    file_content = [css_header, css_content].join "\n\n"
    File.write(args[:filename], file_content)
  end
end
