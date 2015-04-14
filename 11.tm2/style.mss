// Language
@name: '[name]';

// set up font sets for various weights and styles
@sans:              'Komika Parch Regular';
@sans_bold:         'Komika Title - Paint Regular';
@sans_italic:       'Komika Hand Italic';

@red: #BF1725;
@dkred: #BF1736;
@blue: #04ADBF;
@dkblue: #04BFBF;
@white: #EBF2F2;

Map { background-color: @white; }

#road,#bridge,#tunnel { 
  [class='main'] {
    ::red {
      line-width: 3;
      line-color: @red;
      line-opacity: .5;
      }
    ::dkred {
      line-width: 3;
      line-color: @dkred;
      line-geometry-transform: skewY(1.2);
      line-opacity: .25;
      }
    ::blue {
      line-width: 3;
      line-color: @blue;
      line-geometry-transform: skewY(-1.2);
      line-opacity: .5;
      }
    ::dkblue {
      line-width: 3;
      line-color: @dkblue;
      line-geometry-transform: skewY(-2);
      line-opacity: .25;
      }    
    }
  [class='street'],[class='street_limited'] {
    ::red {
      line-width: 1;
      line-color: @red;
      line-opacity: .5;
      }
    ::dkred {
      line-width: 1;
      line-color: @dkred;
      line-geometry-transform: skewY(-1);
      line-opacity: .25;
      }
    ::blue {
      line-width: 1;
      line-color: @blue;
      line-geometry-transform: skewY(1);
      line-opacity: .5;
      }
    ::dkblue {
      line-width: 1;
      line-color: @dkblue;
      line-geometry-transform: skewY(2);
      line-opacity: .25;
      }    
    }  
}

#landuse { 
  [class='park'] { 
    ::blue {
      polygon-fill: @blue;
      polygon-opacity: .5;
      marker-file: url('src/park-18.svg');
      marker-fill: @blue;
      marker-placement: interior;
      marker-allow-overlap: true;
      }
    ::dkblue {
      polygon-fill: @dkblue;
      polygon-opacity: .25;
      polygon-geometry-transform: skewY(2),skewX(2);
      marker-file: url('src/park-18.svg');     
      marker-fill: @dkblue;
      marker-geometry-transform: skewY(-1.5);
      marker-placement: interior;
      marker-allow-overlap: true;     
      marker-opacity: .25;
      }
    ::red {
      polygon-fill: @red;
      polygon-opacity: .5;
      polygon-geometry-transform: skewY(2),skewX(-2);
      marker-file: url('src/park-18.svg');      
      marker-fill: @red;
      marker-geometry-transform: skewY(1.5);      
      marker-placement: interior;  
      marker-allow-overlap: true;   
      marker-opacity: .5;      
      }
    ::dkred {
      polygon-fill: @dkred;
      polygon-opacity: .25;
      polygon-geometry-transform: skewY(-4), skewX(4);
      marker-file: url('src/park-18.svg');      
      marker-fill: @dkred;
      marker-geometry-transform: skewY(25);      
      marker-placement: interior;
      marker-allow-overlap: true;      
      marker-opacity: .25;      
      }
  }
  [class='parking'] { 
    ::blue {
      polygon-fill: mix(black,@blue,50);
      polygon-opacity: .5;
      marker-file: url('src/parking-18.svg');
      marker-placement: interior;
      marker-allow-overlap: true;  
      marker-fill: @blue;
      }
    ::dkblue {
      polygon-fill: mix(black,@dkblue,50);
      polygon-opacity: .25;
      polygon-geometry-transform: skewX(-1.2),skewY(-1.2);
      marker-file: url('src/parking-18.svg');  
      marker-fill: @dkblue;
      marker-geometry-transform: skewY(-1.5);
      marker-placement: interior;
      marker-allow-overlap: true;     
      marker-opacity: .25;
      }
    ::red {
      polygon-fill:mix(black,@red,50);
      polygon-opacity: .5;
      polygon-geometry-transform: skewY(1.2),skewX(1.2);
      marker-file: url('src/parking-18.svg');       
      marker-fill: @red;
      marker-geometry-transform: skewY(1.5);      
      marker-placement: interior;  
      marker-allow-overlap: true;   
      marker-opacity: .5;            
      }
    ::dkred {
      polygon-fill: mix(black,@dkred,50);
      polygon-opacity: .25;
      polygon-geometry-transform: skewX(2),skewY(2);
      marker-file: url('src/parking-18.svg');       
      marker-fill: @dkred;
      marker-geometry-transform: skewY(25);      
      marker-placement: interior;
      marker-allow-overlap: true;      
      marker-opacity: .25;      
      
      }  
  }
  [class='school'] { 
    ::red {
      polygon-fill: @red;
      polygon-opacity: .5;
      marker-file: url('src/school-18.svg');         
      marker-fill: @dkblue;
      marker-geometry-transform: skewY(-1.5);
      marker-placement: interior;
      marker-allow-overlap: true;     
      marker-opacity: .25;
      
      }
    ::dkred {
      polygon-fill: @dkred;
      polygon-opacity: .25;
      polygon-geometry-transform: skewX(-1.2),skewY(-1.2);
      marker-file: url('src/school-18.svg');               
      }  
    ::blue {
      polygon-fill: @blue;
      polygon-opacity: .5;
      polygon-geometry-transform: skewX(1.2),skewY(1.2);
      marker-file: url('src/school-18.svg');       
      marker-placement: interior;
      marker-allow-overlap: true;  
      marker-fill: @blue;
      }
    ::dkblue {
      polygon-fill: @dkblue;
      polygon-opacity: .25;
      polygon-geometry-transform: skewX(2),skewY(2);
      marker-file: url('src/school-18.svg');  
      marker-fill: @dkblue;
      marker-geometry-transform: skewY(-1.5);
      marker-placement: interior;
      marker-allow-overlap: true;     
      marker-opacity: .25;      
      }    
  }
} 

#building {
  ::red {
    polygon-fill: @red;
    polygon-opacity: .5;
    }
  ::dkred {
    polygon-fill: @dkred;
    polygon-opacity: .25;
    polygon-geometry-transform: skewY(1.5),skewX(1.5);
    }
  ::blue {
    polygon-fill: @blue;
    polygon-opacity: .5;
    polygon-geometry-transform: skewY(-1.2),skewX(-1.2);
    }
  ::dkblue {
    polygon-fill: @dkblue;
    polygon-opacity: .25;
    polygon-geometry-transform: skewX(-2),skewY(-2);
    }
  }


#road_label {
  [class='main'] {
    ::red {
      [osm_id =~ '.*[01234]'] {
        text-name: @name;
        text-face-name: @sans;  
        text-fill: @red;
        text-placement: line;
        text-comp-op: darken;
        text-halo-fill: @white;
        text-halo-radius: 2;
        text-halo-opacity: .75;
        }
      }
    ::blue {
      [osm_id =~ '.*[56789]'] {      
        text-name: @name;
        text-face-name: @sans;  
        text-fill: @blue;
        text-placement: line; 
        text-comp-op: darken;      
        text-halo-fill: @white;
        text-halo-radius: 2;
        text-halo-opacity: .75;        
        }
      }
    }
  }

#place_label {
//  text-halo-fill: @blue;
//  text-halo-radius: 5;
//  text-halo-opacity: .5;  
  ::halo2 {
    text-name: @name;
    text-face-name: @sans_bold;
    text-fill: @white;
    text-opacity: .85;
    text-halo-fill: @red;
    text-halo-radius: 5;
    text-halo-opacity: .5;
    text-size: 25;
    text-allow-overlap: true;
    text-dy: 35;
    text-orientation: 15;
    }
  ::halo3 {
    text-name: @name;
    text-face-name: @sans_bold;
    text-fill: @white;
    text-opacity: .25;
    text-halo-fill: @dkred;
    text-halo-radius: 5;
    text-halo-opacity: .25;
    text-size: 25;
    text-allow-overlap: true;
    text-dy: 35;
    text-orientation: 20;
    }  
  text-name: @name;
  text-face-name: @sans_bold;
  text-fill: @white;
  text-size: 25;
  text-allow-overlap: true;
  text-dy: 35;
  text-orientation: 15;
  
  }