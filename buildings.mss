@building: #dcd5c6;
@building-line: darken(@building, 10%);
@station: #d4aaaa;
@supermarket: pink;
@placeOfWorship: #777;
@terminal: #cc99ff;

#buildings-lz {
  [zoom >= 10] {
    [railway = 'station']::railway,
    [building = 'station'] {
      polygon-fill: @station;
      polygon-clip: false;
    }

    [building = 'supermarket'] {
      polygon-fill: @supermarket;
      polygon-opacity: 0.5;
      polygon-clip: false;
    }

    [amenity = 'place_of_worship']::amenity {
      polygon-opacity: 0.5;
      polygon-fill: @placeOfWorship;
      polygon-clip: false;
      [zoom >= 15] {
        polygon-opacity: 0.9;
        polygon-fill: lighten(@placeOfWorship, 20%);
        line-width: 0.3;
        line-color: darken(@placeOfWorship, 40%);
      }
    }
  }
}

#buildings {
  [building != ''][zoom >= 12] {
    polygon-fill: @building;
    polygon-opacity: 0.9;
    polygon-clip: false;
    [zoom >= 15] {
      line-color: @building-line;
      line-width: .75;
      line-clip: false;
    }
  }
  [aeroway = 'terminal'][zoom >= 12]::aeroway {
    polygon-fill: @terminal;
    polygon-clip: false;
    [zoom >= 14] {
      line-color: saturate(darken(@terminal, 50%), 20%);
      line-width: 0.2;
    }
  }
}
