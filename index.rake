require "net/http"
require_relative "./utils/ali_iconfont.rb"

namespace :iconfont do
  desc "Sync icons from css/js fonts link"
  task :sync, [:url, :path, :name] do |task, args|
    args.with_defaults(
      path: "./assets",
      name: "iconfont",
    )
    ext = File.extname(args.url)
    filename = File.join(args.path, args.name + ext)
    app = AliIconfont.new(args.url, filename)
    app.start
  end
end
