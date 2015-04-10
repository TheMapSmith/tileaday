// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Fonts //
@sans: 'Source Sans Pro Regular';
@sans_italic: 'Source Sans Pro Italic';
@sans_bold: 'Clan Offc Pro Extd Bold';

// Common Colors //
@dark: #4E4D4A;
@black: #353432;
@green: #94BA65;
@blue: #2790B0;
@dkblue: #2B4E72;


Map { background-color: @black; }

#water { polygon-fill: @dkblue; }

#waterway { line-color: @dkblue; line-width: 2;}

#road,#bridge,#tunnel { 
  [class='motorway'] { line-color: @blue; } 
  [class='main'] { line-color: @blue; line-width: .25; }
  [class='street'] { line-color: @blue; line-width: .125; line-opacity: .5;}  
  [class='major_rail'] { 
    [osm_id!='245010228'][osm_id!='245010227'] {
      ::line {
        line-color: @green; 
        line-width: 1.5; 
        }
      ::hatch {
        line-width: 3;
        line-dasharray: 1,5;
        line-color: @black;
        } 
      }
  }
}

#hillshade { 
  [class='highlight'] { polygon-opacity: .25; polygon-fill: @green;} 
  [class='shadow'] { polygon-opacity: .25; polygon-fill: @blue;} 
}

#place_label [name='The Dalles'] { 
  text-name: @name;
  text-face-name: @sans_bold;
  text-fill: white;
  text-size: 18;
  }

#aeroway { 
  [type='runway'] { line-color: white; }
  [type='taxiway'] { line-color: white; line-width: .25; }
  [type='apron'] { line-color: @dark; line-width: .25; }
      
}

#landuse {
  [class='industrial'] { polygon-fill: @dark; polygon-opacity: .5;}
  }

