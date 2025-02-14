shader_type spatial;
render_mode unshaded;

uniform vec4 inner_color :  hint_color = vec4(1.0);
uniform vec4 side_color :   hint_color = vec4(1.0);
uniform vec4 middle_color : hint_color = vec4(1.0);
uniform vec4 outer_color :  hint_color = vec4(1.0);

void fragment() {
	if (UV.y <= 0.5) {
		if (UV.x < 0.9) {
			ALBEDO = side_color.rgb;
		} else {
			if (UV.y <= 0.15) {
				ALBEDO = outer_color.rgb;
			} else {
				ALBEDO = middle_color.rgb;
			}
		}
	} else {
		ALBEDO = inner_color.rgb;
	}
}
