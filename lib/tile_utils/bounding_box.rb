module TileUtils
  module BoundingBox
  end
end

require File.expand_path('../bounding_box/geographic', __FILE__) unless defined?(BoundingBox::Geographic)
require File.expand_path('../bounding_box/geometric', __FILE__) unless defined?(BoundingBox::Geometric)
