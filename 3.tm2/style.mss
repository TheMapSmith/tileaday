// colors

@light: #F2F0CE;
@pink: #CEAD95;
@brown: #735A45;
@green: #88824D;
@red: #A64F3C;

Map { background-color: @light; }

@name: '[name]';

@sans: 'Market Offc Pro Regular';
@sans_bd: 'Market Offc Pro Bold';
@serif_ita: 'Providence Offc Pro Italic';

#landcover {
  [class='wood'] { polygon-fill: @brown; }
  [class='scrub'] { polygon-fill: mix(@brown, @light, 50); }
  [class='grass'] { polygon-fill: @pink; }
  [class='crop'] { polygon-fill: mix(@pink, @light, 50); }
  [class='snow'] { polygon-fill: white; }
  }

#hillshade {
  polygon-opacity: .5;
  [class='shadow'] {
    [level=94] { polygon-fill: #000; }
    [level=90] { polygon-fill: #111; }    
    [level=89] { polygon-fill: #222; }        
    [level=78] { polygon-fill: #333; }            
    [level=67] { polygon-fill: #444; }            
    [level=56] { polygon-fill: #555; }                
    }
  [class='highlight'] {
    [level=94] { polygon-fill: #fff; }
    [level=90] { polygon-fill: #eee; }    
    [level=89] { polygon-fill: #ddd; }        
    [level=78] { polygon-fill: #ccc; }            
    [level=67] { polygon-fill: #bbb; }            
    [level=56] { polygon-fill: #aaa; }                    
    }
  }

#water {
  polygon-fill: @red;
  }

#landuse_overlay {
  polygon-fill: @red;
  }

#road, #tunnel, #bridge {
  ::case {
    line-width: 3;
    line-color: @brown;
    line-cap: round;
    }
  ::fill {
    line-width: 1.5;
    line-color: @light;
    line-cap: round;
    }
  }

#admin {
  [admin_level=2] {
    line-color: white;
    line-width: 4;
    line-cap: round;
    line-opacity: .75;
    }
  [admin_level=4] {
    line-color: white;
    line-width: 3;
    line-opacity: .25;
    line-join: round;
    } 
  }

#state_label {
  text-name: @name;
  text-face-name: @sans_bd;
  text-size: 19;
  text-fill: @light;
  text-halo-fill: @red;
  text-halo-radius: 2;
  }

#place_label {
  text-name: @name;
  text-face-name: @serif_ita;
  text-size: 10;
  text-fill: @brown;
  text-halo-fill: @light;
  text-halo-radius: 1;
  }
