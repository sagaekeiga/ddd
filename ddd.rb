require 'rails'

# 全モデルをはく
Dir.glob(File.expand_path("./app/models/*.rb", Rails.root)).each do |f|
  puts f
  f = File.open(f)
  s = f.read  # 全て読み込む
  f.close
  p s
end
