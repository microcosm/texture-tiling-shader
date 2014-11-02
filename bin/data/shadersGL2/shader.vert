#version 120

// this is coming from our C++ code
uniform float mouseX;
uniform float mouseY;

varying vec2 texCoordVarying;

void main()
{
    vec2 texcoord = gl_MultiTexCoord0.xy;

    // here we move the texture coordinates
    texCoordVarying.x = mod(texcoord.x + mouseX, 800.0);
    texCoordVarying.y = mod(texcoord.y + mouseY, 600.0);
    
    // send the vertices to the fragment shader
	gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;;
}