module TileUtils
  module BoundingBox
    class Geometric

      # ATTRIBUTES

      attr_reader :min, :max

      # INITIALIZER

      def initialize(min: nil, max: nil)
        unless min.is_a?(Position::Geometric)
          raise ArgumentError, "min must be a Position::Geometric"
        end

        unless max.is_a?(Position::Geometric)
          raise ArgumentError, "max must be a Position::Geometric"
        end

        @min, @max = min, max
      end

      def x_range
        min_x..max_x
      end

      def y_range
        min_y..max_y
      end

      def min_x
        max.x <= min.x ? max.x : min.x
      end

      def max_x
        max.x >= min.x ? max.x : min.x
      end

      def min_y
        max.y <= min.y ? max.y : min.y
      end

      def max_y
        max.y >= min.y ? max.y : min.y
      end

      # INSTANCE METHODS

      def to_geo
        BoundingBox::Geographic.new(min: min.to_geo, max: max.to_geo)
      end

      def to_geom
        self
      end

    end
  end
end
