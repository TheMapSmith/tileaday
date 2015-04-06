// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Fonts //
@sans: 'League Gothic Regular';
@sans_italic: 'Source Sans Pro Italic';
@sans_bold: 'Source Sans Pro Semibold';

// Common Colors //
@blue: #205373;
@1: #F2C185;
@2: #D98723;
@3: #591202;
@4: #A62103;
@txtfill: @1; 

@h1: 0;
@h2: 0;
@h3: 0;
@h4: 0;

Map { background-color: @blue; }

#building { 
  [osm_id =~ '.*[012]'] { building-fill: @1; building-height: @h1; }
  [osm_id =~ '.*[345]'] { building-fill: @2; building-height: @h2; }  
  [osm_id =~ '.*[678]'] { building-fill: @3; building-height: @h3; }
  [osm_id =~ '.*[90]']  { building-fill: @4; building-height: @h4; }  
  }



#road {
  [class='main'] {
    line-color: white;
    line-width: 2;
    }
  [class='street'] { 
    line-color: #aaa;
    line-width: .5;
    }
  }

#place_label [name='SoHo'] {
  text-name: @name;
  text-face-name: @sans;
  text-size: 30;
  text-fill: @txtfill;
  text-halo-fill: @blue;
  text-halo-radius: 2;
  }
