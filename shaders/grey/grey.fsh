//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;


uniform float a;
void main()
{
	vec4 color = texture2D(gm_BaseTexture, v_vTexcoord); 
	float Y = (color.r + color.b + color.g)/3.0; 
    gl_FragColor = vec4(Y,Y,Y,color.a - a);
}
