module TileUtils
  module Position
  end
end

require File.expand_path('../position/geographic', __FILE__) unless defined?(Position::Geographic)
require File.expand_path('../position/geometric', __FILE__) unless defined?(Position::Geometric)
