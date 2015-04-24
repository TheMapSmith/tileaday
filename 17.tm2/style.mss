// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Fonts //
@sans: 'Merriweather Regular';
@sans_italic: 'Merriweather Italic';
@sans_bold: 'Merriweather Heavy';

// Common Colors //

@background: #2e2e2e;
@land: @background;
@link: #2C6ec7;
@visited: #759cd2;
@hover: #3584de;
@btn_bg: #2f75c5;
@btn_hog: #3584de;
@leftsidepanel: #3e3e3e;
@rtsidepanel: #d2d2d2;
@error:rgba(192, 0, 0, 0.9);
@warn: rgba(128, 128, 0, 0.9);
@info: rgba(42, 115, 200, 0.9);
@success: rgba(0, 192, 0, 0.9);
@history: rgba(0, 0, 0, 0.35);
@scrollinfo: #2f75c5;

@urname: #2c6ec7;
@me: #080;
@guest: #68a;
@admin: #639;
@owner: #e42424;

@starred: rgba(240, 240, 100,1);
@stars: rgba(255, 172, 51, 1.0);


Map { background-color: @background; }

#water { 
  polygon-fill: @urname; 
  line-color: @visited;
  line-width: 1.5;
  line-cap: round; line-join: round;
}

#waterway { 
  ::case {
    line-color: @visited;
    line-width: 4;
    line-cap: round; line-join: round;
    }
  ::fill {
    line-color: @urname;
    line-width: 1.5;
    line-cap: round; line-join: round;
    }
  }

#building {
  building-fill: @leftsidepanel;
  building-height: 5;
  }

#road,#bridge {
  ::case {
    [class='main'] {
      #bridge { line-color: @background; }
      }
    }
  ::fill {
  [class='motorway'] {
    line-color: @owner;
    line-width: 2;
    line-cap: round; line-join: round;            
    }
  [class='main'] {
      line-color: @admin;
      line-width: 1.75;
      line-cap: round; line-join: round;      
    }
  [class='street'] {
    line-color: @guest;
    }
  [class='service'],[class='street_limited'] {
    line-color: @rtsidepanel;
    line-width: .5;
    }
  [class='path'] {
    line-color: @starred;
    line-width: .5;
    line-dasharray: 1,3;
    }
  [class='major_rail'] {
    line-color: @warn;
    }
    }
  } 

#tunnel {
  [class='motorway']{
    ::case {
      line-color: @owner;
      line-width: 2.5;
      line-dasharray: 2,2;
      }
    ::fill {
      line-color: @background;
      line-width: 1.75;
      }
    }
  [class='major_rail'] {
    ::case {
      line-color: @warn;  
      line-width: 1.75;
      line-dasharray: 2,2;
      }
    ::fill {
      line-color: @background;
      }
    
    }
    }


#landuse {
  [class='wood'] { polygon-fill: mix(@me,@background,50); }
  [class='grass'],[class='park'],[class='pitch'] { polygon-fill: @me; polygon-opacity: .75;}
  [class='industrial'] { polygon-fill: @leftsidepanel; line-color: @history;}
  }

#landcover {
  [class='wood'] { polygon-fill: mix(@me,@background,50); }
  [class='grass'] { polygon-fill: @me; polygon-opacity: .75; }
  } 

#place_label {
  [name_en="Tokyo"] {
    text-name: @name;
    text-face-name: @sans_bold;
    text-fill: @starred;
    text-size: 31;
    text-halo-fill: @background;
    text-halo-radius: 2;
    }
  }

#poi_label {
  ::icon [maki!='marker'] {
    [localrank=1] { marker-file: url('src/[maki]-24.svg'); }
    [localrank=2] { marker-file: url('src/[maki]-18.svg'); }
    [localrank>=3] { marker-file: url('src/[maki]-12.svg'); }
    }
  }

#road_label {
  [class='main'] {
    text-name: @name;
    text-face-name: @sans;
    text-size: 8;
    text-fill: @rtsidepanel;
    text-halo-fill: @admin;
    text-halo-radius: .5;
    text-placement: line;
    text-avoid-edges: true;
    }
  }


#water_label { 
  [name_en='Sakurada moat'] {
    text-name: @name;
    text-face-name: @sans_italic;
    text-fill: @urname;
    text-comp-op: multiply;
    text-opacity: .5;
    text-size: 9;
    text-avoid-edges: false;
    text-orientation: -40;
    text-dy: 45; text-dx: 15;
    }
  }
