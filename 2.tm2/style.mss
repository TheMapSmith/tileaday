// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Fonts //
@sans: 'Mark Offc Pro Light';
@sans_italic: 'Source Sans Pro Italic';
@sans_bold: 'Source Sans Pro Semibold';
@serif: 'Crimson Roman';
@serif_ita: 'Crimson Italic';

// Common Colors //
@light: #A59D9D;
@med: #736D6D;
@dark: #2E2C2C;
@ltred: #BC1A17;
@dkred: #85120E;

Map { background-color: @light; }

#water { polygon-fill: @ltred*5; }

#landcover [class='wood'],[class='grass'],[class='crop'] { 
  polygon-opacity: .25;
  polygon-fill: @med; 
}

#landuse {
  opacity: .25;
  [class='cemetery'],[class='park'],[class='pitch'],[class='wood'] {
    polygon-fill: @med; }
  [class='hospital'],[class='industrial'],[class='school'] {
    polygon-fill: @dark; }
  }

#hillshade {
  opacity: .25;
  [class='full_shadow'] {  polygon-fill: @dark; polygon-comp-op: plus; }
  [class='medium_shadow'] {   polygon-fill: @med;polygon-comp-op: multiply; }  
  [class='medium_highlight'] {  polygon-fill: @light; polygon-comp-op: minus; }    
  [class='full_highlight'] {   polygon-fill: white ;polygon-comp-op: lighten;}      
  }

#contour {
  opacity: .5;
  [index=2] { line-color: white; }
  [index=5] { line-color: white; line-width: 4; }
  [index=10] { line-color: white; line-width: 8; }
  }

#barrier_line [class='fence']{
  line-color: @light;
  line-comp-op: multiply;
  line-width: .5;
  line-gamma: .5;
  line-dasharray: 1,1;
  }

#building {
  polygon-fill: @dkred;
  }

#tunnel {
  line-color: @dark;
  line-width: 1;
  line-dasharray: 3,3;
  }

#road,#bridge {
  [class='main'] {
    line-color: @dark;
    line-width: 3;
    line-cap: round;
    }
  [class='street'] {
    line-color: @med;
    line-width: .75;
    line-cap: round;
    line-gamma: .5;
    }
  [type='footway'] {
    line-color: @dark;
    line-width: .125;
    line-gamma: .5;
    line-dasharray: 2,2,1,2;
    }
  }

#place_label {
  [type='city'] {
    text-name: @name;
    text-face-name: @serif;
    text-fill: @dark;
    text-size: 20;
    text-halo-fill: @light;
    text-halo-radius: 2;
    }
  [type='suburb'] {
    text-name: @name;
    text-face-name: @serif_ita;
    text-fill: @dark;
    text-size: 10;
    text-halo-fill: @light;
    text-halo-radius: 1;    
    }
  }

#poi_label [scalerank<=2],[localrank<=1] {
  ::icon[maki!=null] {
    marker-fill: @dark;
    marker-file:url('icon/[maki]-24.svg');
    marker-height: 10;
    }
  ::label {
    text-name: @name;
    text-face-name: @sans;
    text-size: 5;
    text-halo-fill: @light;
    text-halo-radius: .5;
    [maki!=null] { text-dy: 6; }
    }
  }