// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Fonts //
@sans: 'Prater Script Offc Pro Regular';

// Common Colors //
@tan: #F2C48C;
@water: #A7EBF2;
@dktan: #D96E48;
@red: #A63429;
@black: #260202;

Map { background-color: @tan; }

#water { 

  ::offset1 { 
    polygon-fill: darken(@water, 20);
    polygon-geometry-transform: translate(0,1);
    polygon-comp-op: soft-light;
  }
  ::offset2 { 
    polygon-fill: darken(@water, 20);
    polygon-geometry-transform: translate(0,-3);
    polygon-comp-op: color-dodge;
  }
  
    polygon-fill: @water; 
}

#hillshade { 
  [class='shadow'] { polygon-fill: @red; line-color: @red; line-width: 1; }
  [class='highlight'] { polygon-fill: lighten(@tan,20); line-color: @tan; line-width: 1;}
}

#landcover [class='crop'] { polygon-fill: @dktan; polygon-opacity: .5; }

#admin [admin_level=2] { 
  line-color: @water; 
  image-filters: agg-stack-blur(33,33);
  line-comp-op: divide;
}

#country_label {
 ::style3 {
  text-name: "'Falkland Islands'";
  text-face-name: @sans;
  text-size: 18;
  text-fill: @water;
  text-allow-overlap: true;
  text-avoid-edges: false;
  text-dy: -55;
  text-orientation: 6;    
    text-opacity: .25;
    text-comp-op: multiply;
    }  
   ::style2 {
  text-name: "'Falkland Islands'";
  text-face-name: @sans;
  text-size: 18;
  text-fill: @red;
  text-allow-overlap: true;
  text-avoid-edges: false;
  text-dy: -54;
  text-orientation: 3;    
    text-opacity: .5;
    text-comp-op: darken;
    }
 ::style1 {
  text-name: "'Falkland Islands'";
  text-face-name: @sans;
  text-size: 18;
  text-fill: @red;
  text-allow-overlap: true;
  text-avoid-edges: false;
  text-dy: -55;
  text-orientation: 5;    
    }  
  }