#version 330 core

out vec4 FragColor;

in vec3 ourColor; //colors passed from the vertex shader
in vec2 TexCoord; //texture coordinates passed from the vertex shader
uniform sampler2D texture1; //the first texture
uniform sampler2D texture2; //the second texture

void main()
{
   FragColor = mix(texture(texture1,TexCoord),texture(texture2,TexCoord),0.2);
};