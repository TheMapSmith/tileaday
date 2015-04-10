// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Fonts //
@sans: 'Source Sans Pro Regular';
@sans_italic: 'Source Sans Pro Italic';
@sans_bold: 'Source Sans Pro Semibold';
@netto: 'Netto Offc Pro Black Italic' ;

// Common Colors //
@white: #fff;
@red: #A9071E;
@blue: #AAD1D8;
@green: #A0D36E;
@yellow: #FACB47;

Map { background-color: @yellow; }

#water { polygon-fill: @blue; }

#landcover {
  [class='scrub'] { polygon-fill: mix(@green,black,80); }  
  [class='grass'] { polygon-fill: mix(@green,black,90); }
  [class='crop'] { polygon-fill: mix(@green,brown,90); }
  }

#landuse {
  [class='park'] { polygon-fill: mix(@green,brown,90); polygon-opacity: .675;}
  [class='hospital'] { 
    polygon-fill: mix(@red,@yellow,50); 
    marker-file: url('hospital-12.svg'); 
    marker-fill: darken(mix(@red,@yellow,50), 20); 
    marker-height: 9;
  }
  [class='school'] { 
    polygon-fill: mix(@red,white, 50); 
    marker-file: url('school-12.svg'); 
    marker-fill: darken(mix(@red,white, 50), 20); 
    marker-height: 9;
    marker-allow-overlap: true;
  }
  }

#place_label [name='Cape Town'] {
  text-face-name: @netto;
  text-name: @name;
  text-size: 20;
  text-fill: @red;
  text-halo-fill: @yellow;
  text-halo-radius: 2;
  text-allow-overlap: true;
  }

#poi_label [maki='rail'][osm_id!='1000000745659330']{
  marker-file: url('[maki]-12.svg');
  marker-height: 9;
  marker-fill: darken(@red,10);
}

#road,#bridge,#tunnel {
  [type='rail'] { line-color: @red; }
  [class='motorway'] { 
    ::case { line-color: @yellow; line-width: 1.5; }
    ::fill { line-color: lighten(@red, 10); line-width: .5; }
  }  
  [class='main'] { 
    ::case { line-color: @yellow; }
    ::fill { line-color: lighten(@red, 20); line-width: .25; }
  }
  }


#contour { 
  [index=2] { line-color: darken(@yellow,5); line-width: 1; }
  [index=5] { line-color: darken(@yellow,15); line-width: 2; }
  [index=10] { line-color: darken(@yellow,25); line-width: 3; }
}

#hillshade {
  [class='shadow'] { polygon-fill: darken(@yellow, 20); }
  [class='highlight'] { polygon-fill: lighten(@yellow,20); }
  polygon-opacity: .5;
  }