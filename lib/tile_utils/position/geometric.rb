# From http://wiki.openstreetmap.org/wiki/Slippy_map_tilenames

module TileUtils
  module Position
    class Geometric

      # ATTRIBUTES

      attr_reader :x, :y, :z

      # INITIALIZER

      def initialize(x: nil, y: nil, z: nil)
        @x, @y, @z = x, y, z
      end

      # INSTANCE METHODS

      def to_geo
        n = 2.0 ** z
        lng_deg = x / n * 360.0 - 180.0
        lat_rad = Math::atan(Math::sinh(Math::PI * (1 - 2 * y / n)))
        lat_deg = 180.0 * (lat_rad / Math::PI)
        Position::Geographic.new(lat: lat_deg, lng: lng_deg, zoom: z)
      end

      def to_geom
        self
      end

    end
  end
end
