// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Fonts //
@sans_bold: 'Call Eight OT Regular';

// Common Colors //
@land: #fff;
@water: #333;

@rdwidth: 5;
@aero: 3;

Map { background-color: @land; }

// Political boundaries //

#water { polygon-fill: @water; }

#waterway { line-color: @water; }

#landuse_overlay { polygon-fill: @water; }

#road,#bridge,#tunnel { [type!='footway'] { line-width: @rdwidth; line-cap: round; } }

#aeroway { line-width: @rdwidth * @aero; }

#landuse [class='parking'],[class='industrial'] { polygon-fill: black; }

#place_label { 
  text-face-name: @sans_bold;
  text-name: @name;
  text-size: 20;
  text-fill: @land;
  text-halo-fill: black;
  text-halo-radius: 3;
  }