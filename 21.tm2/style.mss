// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Fonts //
@script: 'Mister K Onstage Pro Regular';
@sans_it: 'Meta Offc Pro Cond Normal Italic';
@sans: 'Meta Offc Pro Light';
// Common Colors //
@land: #BFBC95;
@orange: #A64F03;
@yellow: #A6841F;
@ltgrn: #4D733C;
@green: #014034;

Map { background-color: @land; }

#water { polygon-fill: @orange; }

#waterway { line-color: @orange; line-width: 2; }

#road,#bridge,#tunnel { 
  [class='main'] {
    line-color: @green;
    line-width: 2.5;
    line-cap: round; line-join: round;
    }
  [class='street'] {
    line-color: @green;
    line-width: 1.5;    
    }
  [class='service'],[type='service'] {
    line-color: @ltgrn;
    line-width: .75;
    }
  [class='path'],[type='footway'] {
    ::case {
      line-color: @land;
      line-width: .5;
      }
    ::fill {
      line-color: @ltgrn;
      line-width: .5;
      line-dasharray: 1,1;
      }
    }
  [class='major_rail'] { 
    ::hatch {
      line-dasharray: 1,4;
      line-color: #333;
      line-width: 4;
      line-opacity: .5;
      }
    ::fill {
      line-width: 4; 
      line-color: @yellow;
      }
  }
  }

#building { 
  polygon-fill: @land;
  polygon-comp-op: multiply;
  }

#landuse {
  [class='park'],[class='pitch'] { polygon-fill: @ltgrn; polygon-opacity: .75; } 
  [class='parking'] { polygon-fill: #777; polygon-opacity: .75; }   
  [class='wood'] { polygon-fill: @green; polygon-opacity: .25; }
  }

#place_label [name_en='Jakarta']{
  text-name: @name;
  text-face-name: @script;
  text-size: 36; 
  text-fill: @orange;
  text-halo-fill: @land;
  text-halo-radius: 5;
  text-halo-opacity: .75;
  }

#poi_label[maki!=null][maki!='marker'] { 
  ::marker {    
    [localrank=1] { marker-file: url('src/[maki]-24.svg'); marker-fill: @orange;}
    [localrank=2] { marker-file: url('src/[maki]-18.svg'); marker-fill: @orange;}
    [localrank>=3]{ marker-file: url('src/[maki]-12.svg'); marker-fill: @orange;}
    }
  ::label[localrank=1] {
    text-name: @name;
    text-face-name: @sans_it;
    text-wrap-width: 25;    
    text-size: 10;
    text-fill: @orange;
    text-halo-fill: @land;
    text-halo-radius: 1;
    text-dy: 18;
    text-allow-overlap: true;
    text-avoid-edges: true;
    }
  }

#road_label {
  [class='main'] {
    text-name: @name;
    text-face-name: @sans;
    text-size: 10;
    text-placement: line;
    text-fill: @green;
    text-halo-fill: @land;
    text-halo-radius: .75;
    text-avoid-edges: true;
    }
  }