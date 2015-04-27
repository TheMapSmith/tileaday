// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Fonts //
@serif_bold: 'Prater Serif Offc Pro Bold';

// Common Colors //
@red: #A60311;
@green: #142601;
@lime: #BAD94A;
@mustard: #AA8803;
@orange: #BF3604;

Map { background-color: lighten(@lime, 25); }

#water { polygon-fill: @lime; }

#waterway { line-width: 4; line-color: @lime; }

#place_label [name='Kahakuloa'] {
  text-name: @name;
  text-face-name: @serif_bold;
  text-size: 16; 
  text-fill: @green;
  text-halo-fill: lighten(@lime,25);
  text-halo-radius: 1;
  }

#road { 
  [class='main'] {
    line-color: @orange;
    line-width: 2;
    line-cap: round; line-join: round;
    }
  }

#aeroway { line-width: 2; line-color: darken(@orange,25); }


#landuse { 
  [class='park'] { polygon-fill: @green; polygon-opacity: .75; }
  [class='wood'] { polygon-fill: @green; polygon-opacity: .5; }
  [class='agriculture'] { polygon-fill: @mustard; polygon-opacity: .5;}
  }

#hillshade {
  [class='shadow'] { 
    [level=89] { polygon-fill: @orange; polygon-opacity: .25; }
    [level=78] { polygon-fill: @orange; polygon-opacity: .33; }
    [level=67] { polygon-fill: @orange; polygon-opacity: .5; }
    [level=56] { polygon-fill: @orange; polygon-opacity: .75; }
    }
  [class='highlight'] {
    [level=94] { polygon-fill: @mustard; polygon-opacity: .67; }
    [level=90] { polygon-fill: @orange; polygon-opacity: .33; }
    }
  }

#contour {
  [index=-1]{ line-color: @lime; line-width: 3; line-comp-op: multiply; }
  [index=2] { line-color: @green; line-width: .5; line-cap: round; line-join: round; line-opacity: .75;}
  [index=5] { line-color: @green; line-width: 1; line-cap: round; line-join: round; line-opacity: .75;}
  [index=10]{ line-color: @green; line-width: 1.5; line-cap: round; line-join: round; line-opacity: .75;}
  }