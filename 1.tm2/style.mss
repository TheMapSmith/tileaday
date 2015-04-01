// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Fonts //
@sans: 'Providence Sans Offc Pro Regular';
@sans_italic: 'Source Sans Pro Italic';
@sans_bold: 'Providence Sans Offc Pro Bold';
@serif: 'Tisa Offc Pro Light';
@serif_ita: 'Tisa Offc Pro Light Italic';

// Common Colors //
@land: #F2E6CE;
@blue: #15594D;
@green: #93A64E;
@yellow: #D99441;
@orange: #BF5239;

Map { background-color: @land; }

// Political boundaries //

#water { polygon-fill: @blue; }

/* #hillshade {
  [class='full_shadow'] { polygon-fill: @green; }
  [class='medium_shadow'] { polygon-fill: @green; opacity: .25; }
  [class='medium_highlight'] { polygon-fill: @yellow; }
  [class='full_highlight'] { polygon-fill: @yellow; }
  }
*/

#contour {
  line-color: darken(@land, 5);
  [index=10] { line-width: 3px; }
  [index=2] { line-width: 2px;}  
  }

#road {
  [class='main'] {
    line-color: @orange;
    line-width: 3;
    line-gamma: .5;
    line-width: 10px;
    }
  [class='street'] {
    line-color: @orange;
    line-width: .5;
    line-gamma: .5;
    line-width: 5px;    
    }
  [class='street_limited'] {
    line-color: @orange;
    line-width: .25;
    line-gamma: .2;  
    }
  [type='footway'] {
    line-color: @orange;
    line-width: .25;
    line-gamma: .4;
    line-dasharray: 1,1;
    line-opacity: .5;
    }
  }


#landuse {
  opacity: .75;
  [class='cemetery'],[class='park'],[class='pitch'],[class='grass'] {
    polygon-fill: @green;
    }
  [class='hospital'],[class='school'] {
    polygon-fill: @orange;
    }
  [class='parking'],[class='industrial'] {
    polygon-fill: grey;
    }
  }

#barrier_line {
  line-color: mix(grey, @land, 30%);
  [class='land'] {
    polygon-fill: mix(grey, @land, 30%);
    line-color: @land;
    }
  }

#building {
  polygon-fill: @yellow;
  }

#place_label {
  text-name: @name;
  text-face-name: @sans_bold;
  text-size: 18;
  }

#poi_label [localrank=1]{
  text-name: @name;
  text-face-name: @serif_ita;
  text-fill: @land/12;
  text-size: 6;
  text-halo-fill: @land;
  text-halo-radius: 1.25;
  }