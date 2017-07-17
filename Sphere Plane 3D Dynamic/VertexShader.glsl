/*
Title: Sphere-Plane dynamic 3D collision Detection
File Name: VertexShader.glsl
Copyright � 2015
Original authors: Srinivasan Thiagarajan
Written under the supervision of David I. Schwartz, Ph.D., and
supported by a professional development seed grant from the B. Thomas
Golisano College of Computing & Information Sciences
(https://www.rit.edu/gccis) at the Rochester Institute of Technology.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or (at
your option) any later version.

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

Description:
This is an example to demonstrate the implementation of dynamic collision detection between a 
sphere and a plane.In this example we just detect if a collision is occouring or not. We 
calculate the positions of sphere before and after the time step. Then we just detect if the two
points lie on the same side of plane. If they do, then they collide, else they dont.

Again, this method is only good to detect collision. Since we wont know the point of
contact or the exact time of collision, we wont be ablet to compute the impulse accurately.

Use "SPACE" to move ahead by one time step. Use mouse "Click and drag" to rotate the plane.

References:
Real time collision Detection by Ericson
Nicholas Gallagher
AABB-2D by Brockton Roth
*/



#version 400 core // Identifies the version of the shader, this line must be on a separate line from the rest of the shader code
 
layout(location = 0) in vec3 in_position;	// Get in a vec3 for position
layout(location = 1) in vec4 in_color;		// Get in a vec4 for color

out vec4 color; // Our vec4 color variable containing r, g, b, a

uniform mat4 MVP; // Our uniform MVP matrix to modify our position values

uniform	vec3 blue;

void main(void)
{
	color = in_color + vec4(blue,0.0f);	// Pass the color through
	gl_Position = MVP * vec4(in_position, 1.0); //w is 1.0, also notice cast to a vec4
}
