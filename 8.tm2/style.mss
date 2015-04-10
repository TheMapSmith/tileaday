// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Fonts //
@sans: 'Source Sans Pro Regular';
@sans_italic: 'Avenir Oblique';
@sans_bold: 'Source Sans Pro Semibold';
@sans_heavy: 'Avenir Black';
@serif: 'HolmenHeadlineOT Regular';

// Common Colors //
@white: #fff;
@ltorange: #FF8E4C;
@orange: #F75B00;
@teal: #017F7F;
@ltblue: #77F0EF;
@grey: #888;

Map { background-color: @white; }

#water { 
  polygon-fill: @ltblue; 
  line-color: @teal; 
  line-join: round;
  line-cap: round;
  line-opacity: .5;
}

#admin [maritime=0]{ 
  [admin_level=2] { 
    ::blur { 
      line-width: 5; 
      image-filters: agg-stack-blur(3,3); 
      line-opacity: .25;
      line-color: @grey;
    }
    ::solid {
    line-color: @orange; line-width: 1.5; line-join: round; line-cap: round; }  
    }
  
  [admin_level=4] { line-color: @ltorange; line-width: .5; line-join: round; line-cap: round; line-opacity: .5;}  
}


#place_label {
  [type='city'] { marker-fill: @ltorange; marker-line-color: @ltorange * .8; marker-height: 4; }  
  [type='town'] { marker-fill: @ltblue; marker-line-color: @ltblue * .8; marker-height: 2; }    
  [capital=2] { 
    marker-fill: @teal; 
    marker-line-color: mix(@teal,@ltblue,50);
    marker-line-width: 2;
    marker-height: 8;
    text-name: @name;
    text-face-name: @sans_heavy;
    text-dx: 4; text-dy: -4;
    text-size: 12;
    text-fill: @teal;
    text-halo-fill: @white;
    text-halo-radius: 2;
  }
  [capital=4] { 
    marker-fill: @teal; 
    marker-line-color: @teal*2;
    marker-height: 4;
    text-name: @name;
    text-face-name: @sans_italic;
    text-dx: 2; text-dy: 2;
    text-size: 8;
    text-fill: @teal;
    text-halo-fill: @white;
    text-halo-radius: 1;
  }
  [localrank=3] { 
    marker-fill: @teal; 
    marker-line-color: @teal*2;
    marker-height: 4;
    text-name: @name;
    text-face-name: @sans_italic;
    text-dx: 2; text-dy: 2;
    text-size: 8;
    text-fill: @teal;
    text-halo-fill: @white;
    text-halo-radius: 1;
  }  
 }


#country_label [name='Switzerland']{
  text-name: @name;
  text-face-name: @serif;
  text-fill: @teal;
  text-size: 12;
  text-character-spacing: 8;
  text-halo-fill: @white;
  text-halo-radius: 1;
  text-orientation: 9;
  text-dy: 5;
  }

#road,#tunnel,#bridge {
  [class='motorway'],[class='main'] { 
    ::case {
      line-color: @teal; 
      line-width: 1; 
      line-opacity: .5; 
      line-gamma: .5; 
      line-join: round;
      line-cap: round;
      }
    ::fill {
      line-color: @white;
      line-cap: round;
      line-width: .75;
      line-gamma: .5;
      }
  }
}

#landuse { 
  [class='park'] { 
    polygon-fill: mix(@ltblue,@white, 50); 
    polygon-opacity: .5;
    line-color: mix(@teal,@white, 50); 
    line-dasharray: 2,2;
    line-width: .25;
    line-gamma: .5;
    line-opacity: .5;
  }
  [class='wood'] { 
    polygon-fill: mix(@teal,@white, 50); 
    polygon-opacity: .5;
    line-color: mix(@ltblue,@white, 50); 
    line-dasharray: 2,1;
    line-width: .25;
    line-gamma: .5;
    line-opacity: .5;
  }
  
}

#landcover [class='wood']{
    polygon-fill: mix(@teal,@white, 50); 
    polygon-opacity: .5;
    line-color: mix(@ltblue,@white, 50); 
    line-dasharray: 2,1;
    line-width: .25;
    line-gamma: .5;
    line-opacity: .5;  
  }

 
#hillshade {
  [class='shadow'] {
    [level=89] { polygon-fill: mix(@grey,@white,19);  polygon-opacity: .25;}
    [level=78] { polygon-fill: mix(@grey,@white,29);  polygon-opacity: .25;}
    [level=67] { polygon-fill: mix(@grey,@white,39);  polygon-opacity: .25;}
    [level=56] { polygon-fill: mix(@grey,@white,49);  polygon-opacity: .25;}
    }
  [class='highlight'] { polygon-fill: @white; polygon-opacity: .5;   }

  } 

