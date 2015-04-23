// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Fonts //
@sans: 'Source Sans Pro Regular';
@sans_italic: 'Source Sans Pro Italic';
@sans_bold: 'Open Sans Extrabold';

// Common Colors //
@ltblue: #28587F;
@teal: #11464C;
@pink: #611A2E;
@dkblue: #142C40;
@orange: #CC6324;

Map { background-color: lighten(@orange, 20); }

#water { polygon-fill: @dkblue; line-color: @dkblue; }

#waterway { line-color: @dkblue; line-width: 2; line-cap: round; line-join: round;}

#waterway_label { 
  text-name: @name; 
  text-face-name: @sans; 
  text-placement: line;
  text-fill: lighten(@orange,20);
  text-avoid-edges: true;
}

#place_label {
  [name='Pittsburgh'] {
    text-name: @name; 
    text-face-name: @sans_bold; 
    text-size: 24;
    text-align: left;
    text-dy: 105; text-dx: -1;
    text-fill: @pink;
    text-orientation: 3;
    text-halo-fill: lighten(@orange, 20);
    text-halo-radius: 1;
    }
}

#road {
  [class='motorway'] {
    line-color: @ltblue;
    line-width: 2;
    }
  [class='main'] {
    line-color: @ltblue;
    line-width: .5;
    }
  [class='street'] {
    line-color: @ltblue;
    line-width: .25;
    line-opacity: .75;
    }
  }

#bridge {
  [class='motorway'] {
    line-color: @orange;
    line-width: 2;
    }
  [class='main'] {
    line-color: @orange;
    line-width: .5;      
    }  
  [class='street'] {
    line-color: @orange;
    line-width: .25;
    line-opacity: .75;
    }  
  }

#tunnel {
  [class='motorway'] {
    line-color: @pink;
    line-width: 2;
    }
  [class='main'] {
    line-color: @pink;
    line-width: .5;
    }  
  [class='street'] {
    line-color: @pink;
    line-width: .25;
    line-opacity: .75;
    }  
  }

#building { polygon-fill: @teal; }

#landcover {
  [class='wood'] { polygon-fill: mix(@teal,@orange,50); }
  [class='scrub'] { polygon-fill: mix(@teal,@orange,40); }  
  [class='grass'] { polygon-fill: mix(@teal,@orange,30); }   
  [class='crop'] { polygon-fill: mix(@teal,@orange,20); }  
  polygon-opacity: .25;
  }

#landuse {
  [class='cemetery'],[class='park'],[park='pitch'] {
    polygon-fill: mix(@teal,@orange,30);
    }
  [class='wood'] { polygon-fill: mix(@teal,@orange,50); polygon-opacity: .25; }
  [class='school'] { polygon-fill: mix(@dkblue,@orange,50); }
  }

#hillshade {
  [class='shadow'] {
    polygon-opacity: .25;
    polygon-fill: @dkblue;
    }
  [class='highlight'] {
    polygon-opacity: .5;
    polygon-fill: mix(@orange,white,50);
    }
  }