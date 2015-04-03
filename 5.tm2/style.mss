// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Fonts //
@sans: 'Mister K Onstage Pro Regular';
@sans_md: 'Kievit SC Offc Pro Medium';
@sans_italic: 'Source Sans Pro Italic';
@sans_bold: 'Source Sans Pro Semibold';

// Common Colors //
@yellow: #F2FF8B;
@pink: #FF4CA7;
@tan: #DBBA93;
@lav: #AAABFA;
@teal: #4CFFCC;

Map { background-color: @tan; }

#poi_label [localrank<=2][osm_id!= 1000032431627 ]  {
  ::icon {
    marker-file: url('icon/[maki]-24.svg');
    marker-transform: scale(.5,.5); 
    }
  ::label {
    text-name: @name;
    text-face-name: @sans;
    text-fill: #444;
    text-halo-fill: @tan;
    text-halo-radius: 1;
    [maki!=null] { text-dy: 13; }
    }
  }

#place_label [localrank<=2] {
  text-name: @name;
  text-face-name: @sans_md;
  text-fill: #444;
  text-halo-fill: @tan;
  text-halo-radius: 1;
  }

#road,#bridge,#tunnel {
  [class='main'] {
    line-color: @lav;
    line-width: 2;
    }
  [class='street'] {
    line-color: @pink;
    line-width: .5;
    line-gamma: .5;
    }
  [class='major_rail'],[class='minor_rail'] {
    ::case {
      line-color: @tan;
      line-width: 3;
      }
    ::fill {
      line-color: @yellow;      
      }
    }
  }

#landuse_overlay {
  polygon-fill: @teal;
  }

#building {
  polygon-fill: @lav;
  line-color: darken(@lav, 10);
  }

#aeroway {
  line-color: grey;
  [type='runway'] { line-width: 6; }
  }

#water { polygon-fill: @teal; }

#waterway { 
  line-color: @teal; 
  line-width: 5; 
  line-join: round;
}

#landuse {
  [class='cemetery'],[class='park'],[class='pitch'],[class='wood'] {
    polygon-fill: @yellow;
    }
  [class='industrial'] { polygon-fill: mix(grey, @tan, 30); }
  }

#landcover [class='wood'],[class='grass'],[class='crop']{
  polygon-fill: @yellow;
  }
