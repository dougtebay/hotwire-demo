require 'redis'

module ApplicationHelper
  def random_color
    redis.set('color', color)

    color
  end

  private

  def color
    @_color ||= %w(fuchsia lime red yellow).reject { |color| color == cached_color }.sample
  end

  def cached_color
    @_cached_color ||= redis.get('color')
  end

  def redis
    @_redis ||= Redis.new(host: 'localhost')
  end
end
