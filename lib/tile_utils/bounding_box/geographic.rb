module TileUtils
  module BoundingBox
    class Geographic

      # ATTRIBUTES

      attr_reader :min, :max

      # INITIALIZER

      def initialize(min: nil, max: nil)
        unless min.is_a?(Position::Geographic)
          raise ArgumentError, "min must be a Position::Geographic"
        end

        unless max.is_a?(Position::Geographic)
          raise ArgumentError, "max must be a Position::Geographic"
        end

        @min, @max = min, max
      end

      def min_lng
        max.lng <= min.lng ? max.lng : min.lng
      end

      def max_lng
        max.lng >= min.lng ? max.lng : min.lng
      end

      def min_lat
        max.lat <= min.lat ? max.lat : min.lat
      end

      def max_lat
        max.lat >= min.lat ? max.lat : min.lat
      end

      # INSTANCE METHODS

      def to_geo
        self
      end

      def to_geom
        BoundingBox::Geometric.new(min: min.to_geom, max: max.to_geom)
      end

    end
  end
end
