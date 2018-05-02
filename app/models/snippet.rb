class Snippet < ApplicationRecord
  after_save :clear_cache
  after_destroy :clear_cache
  def clear_cache
    $redis.del("snippets")
  end
end
