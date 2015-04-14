// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Fonts //
@sans: 'League Gothic Regular';

// Common Colors //
@white: #F2F2F2;
@black: #0D0D0D;
@yellow: #F2E635;
@red: #F20F0F;
@dkred: #A60303;

Map { background-color: @black; }

#water { polygon-fill: @white; }

#waterway { line-color: @white; }

#hillshade {
  [class='shadow'] {
    [level=94] { polygon-fill: @dkred; polygon-opacity: .5; }
    [level=90] { polygon-fill: @dkred; polygon-opacity: .45; }
    [level=89] { polygon-fill: @dkred; polygon-opacity: .375; }
    [level=78] { polygon-fill: @dkred; polygon-opacity: .25; }
    [level=67] { polygon-fill: @dkred; polygon-opacity: .175; }
    [level=56] { polygon-fill: @dkred; polygon-opacity: .125; }
    }
  [class='highlight'] {  
    [level=94] { polygon-fill: @yellow; polygon-opacity: .5; }
    [level=90] { polygon-fill: @yellow; polygon-opacity: .45; }
    [level=89] { polygon-fill: @yellow; polygon-opacity: .375; }
    [level=78] { polygon-fill: @yellow; polygon-opacity: .25; }
    [level=67] { polygon-fill: @yellow; polygon-opacity: .175; }
    [level=56] { polygon-fill: @yellow; polygon-opacity: .125; }
    }
  }

#contour { 
  line-color: @black; 
  line-comp-op: screen; }

#landuse_overlay { polygon-fill: @white; }

#road,#tunnel,#bridge { 
  [class='motorway'],[type='trunk'] { line-color: @red; line-width: .75;}
  [class='main'] { line-color: @red; line-width: .125; }    
  [class='major_rail'] { 
    line-color: @yellow; 
    line-width: .75; 
    }
  }

#place_label [name_en='Hong Kong']{ 
  text-name: @name;
  text-face-name: @sans;
  text-fill: @white;
  text-halo-fill: @black;
  text-halo-radius: 2;
  text-size: 24;
  }