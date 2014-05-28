# From http://wiki.openstreetmap.org/wiki/Slippy_map_tilenames

module TileUtils
  module Position
    class Geographic

      # ATTRIBUTES

      attr_reader :lat, :lng, :zoom

      # INITIALIZER

      def initialize(lat: nil, lng: nil, zoom: nil)
        @lat, @lng, @zoom = lat, lng, zoom
      end

      # INSTANCE METHODS

      def to_geo
        self
      end

      def to_geom
        lat_rad = lat/180 * Math::PI
        n = 2.0 ** zoom
        x = ((lng + 180.0) / 360.0 * n).to_i
        y = ((1.0 - Math::log(Math::tan(lat_rad) + (1 / Math::cos(lat_rad))) / Math::PI) / 2.0 * n).to_i

        Position::Geometric.new(x: x, y: y, z: zoom)
      end

    end
  end
end
