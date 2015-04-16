@name: '[name_en]';
@serif: 'Marselis Slab Offc Pro Regular';
@serif_lt: 'Marselis Slab Offc Pro Light Italic';
@serif_bd: 'Marselis Slab Offc Pro Black';
@sans: 'Netto Offc Pro Regular';

// Common Colors //
@blue: #03318C;
@dkblue: #021F59;
@tan: #F2A649;
@brown: lighten(@tan,20);
@orange: #D94423;

Map { background-color: @brown; }

#landuse { 
  [class='grass'] { polygon-fill: @tan; polygon-comp-op: screen; }
  [class='park'] { polygon-fill: @tan; }
  [class='parking'] { polygon-fill: @tan; polygon-comp-op: multiply; }
}

//#contour { line-color: @orange; }

#water { polygon-fill: @blue; }
#waterway { line-color: @blue; }

#building { 
  polygon-fill: @orange;
  line-color: @brown;
  }

#road,#tunnel,#bridge {
  [class='service'] { line-color: @tan; line-dasharray: 3,2; line-width: .5; }  
  [class='main'] { 
    ::case {
      line-color: @tan; line-width: 4; line-dasharray: 3,3;
      }
    ::fill {
      line-color: @brown; line-width: 3; 
      }
  }
  [class='street'],[class='street_limited'] { 
    ::case {
      line-color: @tan; line-width: 2; line-dasharray: 1,1;
      }
    ::fill {
      line-color: @brown; line-width: 1; 
      }
  }
  [class='path'] { line-color: @tan; line-dasharray: 1,2; line-comp-op: screen;}
  }

#road_label {
  [class='main'] {
    text-name: @name;
    text-face-name: @serif;
    text-fill: @dkblue;
    text-size: 12;
    text-halo-fill: @tan;
    text-halo-radius: .5;
    text-placement: line;
    }
  [class='street'] {
    text-name: @name;
    text-face-name: @serif_lt;
    text-fill: @dkblue;
    text-size: 8;
    text-halo-fill: @tan;
    text-halo-radius: .375;
    text-placement: line;
    }  
  }



#poi_label {
  [scalerank=3]{
    // --- dots ---------
    marker-width: 8;
    marker-fill: @blue;
    marker-line-color: @brown;
    marker-line-width: 2;
    // --- text ---------
    text-name: @name;
    text-face-name: @sans;
    text-size: 10;
    text-fill: @blue;
    text-halo-fill: @brown;
    text-halo-radius: 2;
    text-avoid-edges: true;
    text-transform: lowercase;
    text-wrap-width: 80;
    text-placement-type: simple;
    text-line-spacing: -8;
    text-placements: NE,SE,NW,SW;
    text-dx: 5;
    text-dx: -5;
    }
  [scalerank=4]{
    // --- dots ---------
    marker-width: 6;
    marker-fill: @blue;
    marker-line-color: @brown;
    marker-line-width: 1.5;
    // --- text ---------
    text-name: @name;
    text-face-name: @sans;
    text-size: 7;
    text-fill: @blue;
    text-halo-fill: @brown;
    text-halo-radius: 1;
    text-avoid-edges: true;
    text-transform: lowercase;
    text-wrap-width: 80;
    text-placement-type: simple;
    text-line-spacing: -8;
    text-placements: NE,SE,NW,SW;
    text-dx: 5;
    text-dx: -5;
    }  
}

#place_label {
  text-face-name: @serif_bd;
  text-name: @name;
  text-size: 35;
  text-allow-overlap: true;
  text-fill: @blue;
  
  }