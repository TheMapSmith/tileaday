@name: '[name]';  


@pink: #FF0060;
@green: #00FE00;
@cyan: #00FFD2;
@purple: #9A2CE3;
@orange: #FF8B2F;

@sans: 'Avenir Medium';

Map { background-color:@pink; }

#road, #bridge, #tunnel { 
  [class='street'] { line-color: @purple; line-width: 6; 
        ::dash {
      line-color: @orange;
      line-dasharray: 8,8;
      line-cap: round;
      }
  }
  [class='service'] { line-color: @purple; line-width: 2; line-cap: round;}  
  [class='path'] { 
    ::case { 
      line-width: 4; 
      line-dasharray: 4,8; 
      line-color: @purple;
      line-cap: round;
    }
    ::fill {
      line-color: @green; 
      line-width: 2; 
      line-dasharray: 4,8;
      line-cap:round;
      }
    }  
  }

#landuse { 
  [class='hospital'] { polygon-fill: @cyan; }
  [class='park'] { polygon-fill: @orange; }
  [class='parking'] { polygon-fill: @green; line-width: 4; line-color: @green/4; }  
  [class='wood'] { polygon-fill: @purple; }   
  [class='agriculture'] { 
    polygon-fill: @green; 
    polygon-pattern-file: url('pattern/wave.png');
    polygon-pattern-comp-op: darken;
  }
}

#water { polygon-fill: @cyan; line-color: @cyan/2; line-width: 4; }

#barrier_line { 
  line-width: 4; 
  line-color: @green;
  line-dasharray: 2,2;
}

#building {
  polygon-fill: @pink;
  line-color: @pink/2;
  line-width: 2;
  building-height: 3;
  building-fill: @pink;
  }

#water_label { 
  text-name: @name; 
  text-face-name: @sans; 
  text-orientation: 25;
}
