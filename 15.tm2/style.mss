@name: '[name_en]';

@sans: 'Magda Clean Mono Offc Pro Regular';
@sans_bd: 'Magda Clean Mono Offc Pro Black';

// Common Colors //
@brown: #452520;
@ltbrown: #AB5337;
@orange: #E56623;
@tan: #A86530;
@green: #705202;

Map { background-color: lighten(@tan,15); }

#water { polygon-fill: mix(@green,white,30); }

#landcover {
  [class='wood'] { polygon-fill: @brown; polygon-opacity: .5; }
  [class='scrub'] { polygon-fill: @tan; polygon-opacity: .5; }
  [class='grass'] { polygon-fill: @green; polygon-opacity: .5; }
  [class='crop'] { polygon-fill: @orange; polygon-opacity: .5; }
  }

#hillshade {
  [class='shadow'] {
    polygon-fill: black;
    polygon-opacity: .5;    
    }
  [class='highlight'] {
    polygon-fill: white;
    polygon-opacity: .5;        
    }
  }

#admin [maritime=0]{
  ::blur {
    line-width: 5;
    line-color: darken(@green,10);
    image-filters: agg-stack-blur(13,13);
    line-opacity: .125;
    line-cap: round;
    line-comp-op: screen;
    }  
  ::fill {
    line-color: @tan;
    line-join: round; line-cap: round;
    line-comp-op: darken;
    }
  }

#place_label {
  [name='Sydney'] {
    text-name: @name;
    text-face-name: @sans;
    text-fill: @brown;
    text-size: 15;
    text-dx: 3;
    }
  [name='Canberra'] {
    text-name: @name;
    text-face-name: @sans;
    text-fill: @brown;
    text-size: 15;
    text-dx: 20;
    }
  [name='Melbourne'] {
    text-name: @name;
    text-face-name: @sans;
    text-fill: @brown;
    text-size: 15;
    text-dx: 20; text-dy: 15;
    }
  [name='Adelaide'] {
    text-name: @name;
    text-face-name: @sans;
    text-fill: @brown;
    text-size: 15;
    text-dx: 0;
    }
  }

#hillshade { polygon-fill: purple; }