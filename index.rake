# rake hello[afei,bash]
namespace :iconfont do
  Dir["./tasks/*.rake"].each do |task|
    load task
  end
end
