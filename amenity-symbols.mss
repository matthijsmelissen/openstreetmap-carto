.symbols {
  [aeroway = 'helipad'][zoom >= 16]::aeroway {
    point-file: url('symbols/helipad.p.16.png');
    text-name: "[name]";
    text-size: 8;
    text-fill: #6692da;
    text-dy: -10;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [aeroway = 'aerodrome'][zoom >= 10][zoom < 13]::aeroway {
    [zoom < 11] {
      point-file: url('symbols/aerodrome.p.16.png');
      text-dy: -12;
    }
    text-name: "[name]";
    text-size: 8;
    text-fill: #6692da;
    text-face-name: @oblique-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [railway = 'level_crossing'][zoom >= 14]::railway {
    point-file: url('symbols/level_crossing.png');
    point-placement: interior;
    [zoom >= 16] {
      point-file: url('symbols/level_crossing2.png');
    }
  }

  [man_made = 'lighthouse'][zoom >= 15]::man_made {
    point-file: url('symbols/lighthouse.p.20.png');
    point-placement: interior;
  }

  [natural = 'peak'][zoom >= 11]::natural {
    point-file: url('symbols/peak.png');
    point-placement: interior;
  }

  [natural = 'volcano'][zoom >= 11]::natural {
    point-file: url('symbols/volcano.png');
    point-placement: interior;
  }

  [natural = 'cave_entrance'][zoom >= 15]::natural {
    point-file: url('symbols/poi_cave.p.16.png');
    point-placement: interior;
  }

  [natural = 'spring'][zoom >= 14]::natural {
    point-file: url('symbols/spring.png');
    point-placement: interior;
  }

  [power = 'generator']['generator:source' = 'wind']::power,
  [power = 'generator'][power_source = 'wind']::power {
    [zoom >= 15] {
      point-file: url('symbols/power_wind.png');
      point-placement: interior;
    }
  }

  [man_made = 'windmill'][zoom >= 16]::man_made {
    point-file: url('symbols/windmill.png');
    point-placement: interior;
  }

  [man_made = 'mast'][zoom >= 17]::man_made {
    point-file: url('symbols/communications.p.20.png');
    point-placement: interior;
  }

  [highway = 'mini_roundabout'][zoom >= 16]::highway {
    point-file: url('symbols/mini_round.png');
    point-placement: interior;
  }

  [barrier = 'gate']::barrier {
    [zoom >= 15] {
      point-file: url('symbols/gate2.png');
      point-placement: interior;
    }
  }

  [barrier = 'lift_gate'][zoom >= 16]::barrier {
    point-file: url('symbols/liftgate.png');
    point-placement: interior;
  }

  [barrier = 'bollard'],
  [barrier = 'block'] {
    [zoom >= 16] {
      point-file: url('symbols/bollard.png');
      point-placement: interior;
    }
  }
}

#trees [zoom >= 16] {
  ::canopy {
    image-filters: agg-stack-blur(1,1);
    opacity: 0.3;
    [natural = 'tree_row'] {
      line-color: green;
      line-cap: round;
      line-width: 2.5;
      [zoom >= 17] {
        line-width: 5;
      }
      [zoom >= 18] {
        line-width: 10;
      }
      [zoom >= 19] {
        line-width: 20;
      }
      [zoom >= 20] {
        line-width: 40;
      }
    }
    [natural = 'tree'] {
      marker-fill: green;
      marker-allow-overlap: true;
      marker-line-width: 0;
      marker-width: 2.5;
      marker-height: 2.5;
      [zoom >= 17] {
        marker-width: 5;
        marker-height: 5;
      }
      [zoom >= 18] {
        marker-width: 10;
        marker-height: 10;
      }
      [zoom >= 19] {
        marker-width: 15;
        marker-height: 15;
      }
      [zoom >= 20] {
        marker-width: 30;
        marker-height: 30;
      }
    }
  }
  [natural = 'tree']::trunk {
    image-filters: agg-stack-blur(1,1);
    [zoom >= 18] {
      trunk/marker-fill: #b27f36;
      trunk/marker-allow-overlap: true;
      trunk/marker-line-width: 0;
      trunk/marker-width: 2;
      trunk/marker-height: 2;    
    }
    [zoom >= 19] {
      trunk/marker-width: 3;
      trunk/marker-height: 3;    
    }
    [zoom >= 20] {
      trunk/marker-width: 6;
      trunk/marker-height: 6;    
    }
  }
}
