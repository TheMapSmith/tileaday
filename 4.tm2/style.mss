// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Fonts //
@sans: 'Brokenscript Rough OT Bold';
@sans_italic: 'Source Sans Pro Italic';
@sans_bold: 'Source Sans Pro Semibold';

// Common Colors //
@land: #F1F1F1;
@blue: #A6D8D4;
@black: #302E2A;
@yellow: #FFDB00;
@tan: #FFF9AE;


Map { background-color: @black; }

#landcover [class='wood'],[class='grass'],[class='crop']{
  polygon-fill: @tan;
  line-color: @tan/2;
  line-width: 1.5;
  line-cap: round;
  line-join: round;
  polygon-opacity: .5;
  }

#hillshade {
  [class='full_shadow'] { polygon-fill: @black; polygon-opacity: .5; }
  [class='medium_shadow'] { polygon-fill: mix(@black, @yellow,75); polygon-opacity: .5; }
  [class='medium_highlight'] { polygon-fill: mix(@black, @yellow,25); polygon-opacity: .5; }
  [class='full_highlight'] { polygon-fill: mix(@black, @land,25); polygon-opacity: .5; }
  }

#contour {
  [index=10] { line-color: @tan;  line-width: 4;  line-opacity: .75;}
  [index=5] { line-color: @tan;  line-width: 2;  line-opacity: .75;}
  [index=2] { line-color: @tan;  line-width: 1;  line-opacity: .75;}
  }

#landuse {
  [class='cemetery'],[class='park'],[class='pitch'],[class='wood'] {
    polygon-fill: @tan;
    polygon-opacity: .5;
    }
  }

#waterway {
  line-color: @blue;
  line-width: 3;
  line-cap: round;
  line-join: round;
  }

#water {
  polygon-fill: @blue;
  }

#aeroway {
  line-width: 2;
  line-color: @yellow;
  line-opacity: .5;
  }


#road  {
  [class='motorway'] {
    line-color: @yellow;
    line-width: 3;
    line-cap: round;
      }
  [class='main'] {
    line-color: @land;
    line-gamma: .5;
    }
  }

#bridge [class='motorway'] {
  ::case { line-color: @black; line-width: 5; }
  ::fill { line-color: @yellow; line-width: 3; }
  }

#tunnel [class='motorway'] {
  ::case { line-color: @black; line-width: 5; line-dasharray: 2,2; }
  ::fill { line-color: @yellow; line-width: 3; }
  }


#place_label [name='Rio de Janeiro']{
  text-name: @name;
  text-face-name: @sans;
  text-size: 18;
  text-fill: @black;
  text-halo-fill: @tan;
  text-halo-radius: 2px;
  }