// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Fonts //
@sans: 'Roboto Bold Condensed';
@sans_it: 'Roboto Italic';

// Common Colors //
@red: #8C111B;
@ltblue: #8097A6;
@white: #F2E5BD;
@tan: #F29C50;
@orange: #F24535;

Map { background-color: @white; }

#water { polygon-fill: @ltblue; }

#road,#bridge,#tunnel {
  [class='main'] {
    line-color: @red;
    line-width: 4;
    line-cap: round; line-join: round;          
    }
  [class='street'] {
    line-color: @orange;
    line-width: 2;
    }
  [class='street_limited'] {
    line-color: @orange;
    line-width: 1.5;
    line-opacity: .75;
    }
  [class='path'] {
    line-color: @tan;
    }
  [class='major_rail'] {
    line-color: darken(@ltblue,20);
    line-width: 3;
    }
  [type='pedestrian'],[type='footway'],[type='steps']
    { line-dasharray: 1,3; }
  }

#landuse {
  [class='cemetery'],[class='park'],[class='pitch'] {
    polygon-fill: @tan;
    polygon-opacity: .75;
    }
  [class='parking'] { polygon-fill: mix(@tan, black, 75); }
  }

#building { 
  polygon-fill: @orange; 
  polygon-opacity: .25;
  line-color: @white;
  line-width: .5;
}

#place_label [name_en='Lisbon'] { 
  text-name: @name;
  text-face-name: @sans;
  text-size: 35;
  text-fill: darken(@ltblue,25);
  text-halo-fill: @white;
  text-halo-radius: 2;
  }

#poi_label {
  ::marker [maki!='marker']{
    [localrank=1] { 
      marker-file: url('src/[maki]-24.svg'); 
      marker-fill: @red;
    }
    [localrank=2] { 
      marker-file: url('src/[maki]-18.svg'); 
      marker-fill: @red;
    }
    [localrank>=3] { 
      marker-file: url('src/[maki]-12.svg'); 
      marker-fill: @red;
      marker-opacity: .5;
    }
    
    }
  ::label [maki!=null][maki!='marker'] {
    [localrank=1] { 
      text-name: @name;
      text-face-name: @sans_it;
      text-fill: @red;
      text-size: 8;
      text-halo-fill: @white;
      text-halo-radius: .5;
      text-dy: 8;
      text-allow-overlap: true;
    }
    [localrank=2] { 
      text-name: @name;
      text-face-name: @sans_it;
      text-fill: @red;
      text-size: 6;
      text-halo-fill: @white;
      text-halo-radius: .5;
      text-wrap-width: 20;
      text-dy: 7;
      text-allow-overlap: true;
    }
    [localrank>=3] { 
      text-name: @name;
      text-face-name: @sans_it;
      text-fill: @red;
      text-opacity: .5;
      text-size: 5;
      text-halo-fill: @white;
      text-halo-radius: .5;
      text-wrap-width: 20;
      text-dy: 7;
    }    
    }
  }

#road_label {
  [class='main'] {
    text-name: @name;
    text-face-name: @sans_it;
    text-placement: line;
    text-fill: @white;
    text-halo-fill: @red;
    text-halo-radius: .5;
    text-avoid-edges: true;
    }
}