// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Fonts //
@sans: 'Tartine Script Offc Pro Black';
@serif: 'Tisa Offc Pro Bold Italic';

// Common Colors //
@white: #F2ECCE;
@yellow: #F2AB27;
@red: #A9301C;
@blue: #1D6A73;
@green: #507355;

Map { background-color: @white; }

#water { polygon-fill: @yellow; }

#road,#bridge,#tunnel {
  [class='main'] {
    line-color: @red;
    line-width: 2;
    line-cap: round; line-join: round;
    }
  [class='street'] {
    line-color: @blue;
    line-cap: round; line-join: round;
    }
  [type='pedestrian'],[type='footway'] {
    line-color: @green;
    line-cap: round; line-join: round;
    line-width: .25;
    line-dasharray: 2,2;
    }
  [class='major_rail'] { line-color: @blue; line-width: .25;}
  [class='minor_rail'] { line-color: @green; line-width: .25;}  
  }

#building { 
  [osm_id =~ '.*[012]'] { polygon-fill: @green*1.5; }
  [osm_id =~ '.*[345]'] { polygon-fill: @green/1.5; }  
  [osm_id =~ '.*[678]'] { polygon-fill: @green*1.8; }    
  [osm_id =~ '.*[9]'] { polygon-fill: @green*1.9; }
  line-color: @green/2; line-width: .25;
}

#barrier_line { 
  [class='fence'],[class='gate'] { line-width: .5; line-dasharray: 2,1; line-opacity: .5; }
  [class='hedge'] { line-color: @green; line-width: 2; }
   }

#landuse {
  [class='parking'] { polygon-fill: grey; }
  [class='park'] { polygon-fill: @green; polygon-opacity: .5; }
  [class='pitch'] { polygon-fill: @green; polygon-opacity: .5; }
  }

#place_label [name_en='Helsinki']{
  ::halo0 {
    text-name: @name;
    text-face-name: @sans;
    text-size: 20;
    text-allow-overlap: true;
    text-fill: @white;    
    text-halo-fill: black;
    text-halo-radius: .5;
    }
  ::halo1 {
    text-name: @name;
    text-face-name: @sans;
    text-size: 20;
    text-allow-overlap: true;
    text-fill: @white;    
    text-halo-fill: @green;
    text-halo-radius: 2;
    text-halo-comp-op: overlay;
    }
  ::halo2 {
    text-name: @name;
    text-face-name: @sans;
    text-size: 20;
    text-allow-overlap: true;
    text-fill: @white;    
    text-halo-fill: @red;
    text-halo-radius: 12;
    text-halo-opacity: .125;
    text-halo-comp-op: darken;
    }  
  ::halo3 {
    text-name: @name;
    text-face-name: @sans;
    text-size: 20;
    text-allow-overlap: true;
    text-fill: @white;    
    text-halo-fill: @blue;
    text-halo-radius: 4;
    text-halo-opacity: .125;
    text-halo-comp-op: multiply;
    }    
  
  }

#poi_label [scalerank<=3]{
  ::marker {
    marker-file: url('src/[maki]-12.svg');
    marker-fill: @white;
    marker-line-color: @blue;
    marker-line-opacity: 1;
    [scalerank=1] { marker-height: 12; }
    [scalerank=2] { marker-height: 9; }
    [scalerank=3] { marker-height: 6; }
    }
  }

#road_label { 
  [class='main'] {
    text-name: @name;
    text-face-name: @serif;
    text-size: 6;
    text-fill: @white;
    text-halo-fill: @red;
    text-halo-radius: .5;
    text-placement: line;
    text-avoid-edges: false;
    }
  [class='street'] {
    text-name: @name;
    text-face-name: @serif;
    text-size: 4;
    text-fill: @white;
    text-halo-fill: @blue;
    text-halo-radius: .25;
    text-placement: line;
    text-avoid-edges: false;
    }
  }