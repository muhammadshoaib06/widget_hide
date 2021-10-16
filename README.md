# To Show or Hide Flutter Widget

There are three types to hide or show Flutter Widget. 

## Opacity Widget: 
The Opacity widget that makes its child partially transparent. This class colors its child into an intermediate buffer and then merges the child back into the scene partially transparent. For values of opacity other than 0.0 and 1.0, this class is relatively expensive as it needs coloring the child into an intermediate buffer. For the value 0.0, the child is simply not colored at all. For the value 1.0, the child is colored without an intermediate buffer.

## Visibility Widget: 
It has a visible property that manages whether the child is included in the widget subtree or not. When it is set to false, the replacement child generally a zero-sized box is included instead.

## Offset Widget: 
Offset widget lays the child out as if it was in the widget tree, but doesn’t paint anything. The child widget neither has any interactivity nor it takes any space.

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
