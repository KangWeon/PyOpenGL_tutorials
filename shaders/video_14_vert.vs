#version 330
layout(location = 0) in vec3 position;
layout(location = 1) in vec3 color;
layout(location = 2) in vec2 textureCoords;
uniform mat4 transform;

uniform mat4 view;
uniform mat4 model;
uniform mat4 projection;

out vec3 newColor;
out vec2 newTexture;
void main()
{
    gl_Position = projection * view * model * transform * vec4(position, 1.0f);
    newColor = color;
    newTexture = textureCoords;
}