#version 330
layout(location = 0) in vec3 position;
layout(location = 1) in vec2 textureCoords;

uniform mat4 transform;

uniform mat4 view;
uniform mat4 model;
uniform mat4 projection;

out vec2 newTexture;
void main()
{
    gl_Position = projection * view * model * transform * vec4(position, 1.0f);
    newTexture = textureCoords;
}