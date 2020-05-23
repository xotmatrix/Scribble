/// Sets Scribble's text wrapping state
/// 
/// @param maxBoxWidth       Maximum line width for each line of text. Use a negative number (the default) for no limit
/// @param maxBoxHeight      Maximum height for the whole textbox. Use a negative number (the default) for no limit
/// @param [characterWrap]   Whether to wrap text per character (rather than per word). Defaults to <false>. This is useful for very tight textboxes and some East Asian languages
/// 
/// This operates in a very similar way to GameMaker's native draw_text_ext() function ("sep" is minLineHeight and "w" is maxLineWidth).
/// 
/// This script sets Scribble's draw state. All text drawn with scribble_draw() will use these settings until they're overwritten, either by
/// calling this script again or by calling scribble_reset() or scribble_set_state().

var _max_width      = argument[0];
var _max_height     = argument[1];
var _character_wrap = (argument_count > 2)? argument[2] : false;

global.scribble_state_max_width      = _max_width;
global.scribble_state_max_height     = _max_height;
global.scribble_state_character_wrap = _character_wrap;

global.__scribble_cache_string = string(global.scribble_state_default_font   ) + ":" +
                                 string(global.scribble_state_default_color  ) + ":" +
                                 string(global.scribble_state_default_halign ) + ":" +
                                 string(global.scribble_state_line_min_height) + ":" +
                                 string(global.scribble_state_line_max_height) + ":" +
                                 string(global.scribble_state_max_width      ) + ":" +
                                 string(global.scribble_state_max_height     ) + ":" +
                                 string(global.scribble_state_character_wrap );