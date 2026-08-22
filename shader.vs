#version 330 core

layout (location = 0) in vec3 aPos; // the position variable has attribute position 0
layout (location = 1) in vec3 aColor; // the color variable has attribute position 1
layout (location = 2) in vec2 aTexCoord; // the texture coordinate variable has attribute position 2

out vec3 ourColor; // output a color to the fragment shader
out vec2 TexCoord; // output a texture coordinate to the fragment shader

uniform mat4 transform; // the transformation matrix

void main()
{
   gl_Position = transform *vec4(aPos.x, aPos.y, aPos.z, 1.0); // set the position of the vertex
   ourColor = aColor;
   TexCoord = aTexCoord;
};