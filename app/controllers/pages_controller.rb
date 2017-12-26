class PagesController < ApplicationController

  #
  # ||トップページを表示する||
  #
  def index
  end

  #
  # ||コメントを読み込む||
  #
  def read
    @reads = []
    # 全モデルをはく
    Dir.glob(File.expand_path("./app/controllers/*.rb", Rails.root)).each.with_index do |f, index|
      puts index
      f = File.open(f)
      s = f.read  # 全て読み込む
      f.close
      puts s
      puts s.match(/\|\|(.+)\|\|/)
      @reads << s.scan(/\|\|(.+)\|\|/)
      @reads = @reads.flatten
    end
  end

  #
  # ||コメントを解析する||
  #

  #
  # ||描画する||
  #
end
